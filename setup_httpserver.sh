#!/bin/bash

EXECUTABLE="./HTTP_Server"
LOG_FILE="./logs/temp.log"
PID_FILE="./HTTP_Server.pid"
CONFIG_FILE="./config.txt"
LOGS_DIR="./logs/server_log"
WEB_ROOT="/var/www/html"

setup_permissions() {
    echo "Checking permissions for $WEB_ROOT..."

    if [ ! -d "$WEB_ROOT" ]; then
        echo "Directory $WEB_ROOT does not exist. Creating it..."
        sudo mkdir -p "$WEB_ROOT"
        sudo chown -R $(whoami):$(whoami) "$WEB_ROOT"
        sudo chmod -R 755 "$WEB_ROOT"
        sudo find "$WEB_ROOT" -type f -exec chmod 644 {} \;
        echo "Directory created and permissions set."
        return
    fi
    current_owner=$(stat -c "%U:%G" "$WEB_ROOT")
    required_owner=$(whoami):$(whoami)
    if [ "$current_owner" != "$required_owner" ]; then
        echo "Changing ownership of $WEB_ROOT to $required_owner..."
        sudo chown -R $required_owner "$WEB_ROOT"
    fi

    current_permissions=$(stat -c "%a" "$WEB_ROOT")
    if [ "$current_permissions" != "755" ]; then
        echo "Setting directory permissions to 755..."
        sudo chmod -R 755 "$WEB_ROOT"
    fi

    find "$WEB_ROOT" -type f -exec sh -c 'test "$(stat -c "%a" "$1")" = "644" || echo "Changing file permissions of $1 to 644..." && chmod 644 "$1"' sh {} \;

    echo "Permissions checked and updated if necessary."
}

update_config() {
    local key="$1"
    local new_value="$2"

    if [ -f "$CONFIG_FILE" ]; then
        
        sed -i "s/^$key=.*/$key=$new_value/" "$CONFIG_FILE"
        echo "$key updated to $new_value in $CONFIG_FILE"
    else
        echo "Configuration file not found!"
        exit 1
    fi
}

cleanup() {
    echo "Stopping server..."
    kill $(cat $PID_FILE)
    rm -f $PID_FILE
    echo "Server stopped. Log file is kept at $LOG_FILE."
}


start() {
    if [ -f "$PID_FILE" ]; then
        echo "Server is already running."
        return
    fi
    echo "Starting server...."
    setup_permissions
    
    nohup ./HTTP_Server > $LOG_FILE 2>&1 &
    PID=$!
    echo "Server started."
    echo $PID > $PID_FILE
    echo "Server started with PID $PID."
    sleep 2  
    if ! ps -p $PID > /dev/null; then
        echo "Server failed to start."
        exit 1
    fi
}

stop() {
    if [ ! -f "$PID_FILE" ]; then
        echo "Server is not running."
        return
    fi
    echo "Stopping server..."
    kill $(cat $PID_FILE) 2>/dev/null
    rm -f $PID_FILE
    echo "Server stopped."
    cleanup
}

status() {
    if [ -f "$PID_FILE" ]; then
        echo "Server is running (PID: $(cat $PID_FILE))."
    else
        echo "Server is not running."
    fi
}

log() {
    if [ -f "$LOG_FILE" ]; then
        tail -f $LOG_FILE
    else
        echo "Log file not found."
    fi
}

restart() {
    stop
    start
}

clear_logs() {
    if [ -d "$LOGS_DIR" ]; then
        echo "Clearing log files in $LOGS_DIR..."  
        sudo rm -rf "$LOGS_DIR"/*
        echo "Log files cleared."
    else
        echo "Log directory $LOGS_DIR does not exist."
        exit 1
    fi
}

help() {
    echo "Usage: $0 {start|stop|status|log|restart|config|clear_logs|help}"
    echo
    echo "Commands:"
    echo "  start        : Start the server"
    echo "  stop         : Stop the server"
    echo "  status       : Check if the server is running"
    echo "  log          : View the server logs"
    echo "  restart      : Restart the server"
    echo "  config <key> <value> : Update the configuration file and restart the server"
    echo "  clear_logs   : Clear the log files in $LOGS_DIR"
    echo "  help         : Show this help message"
}


case "$1" in
    start)
        start
        ;;
    stop)
        stop
        ;;
    status)
        status
        ;;
    log)
        log
        ;;
    restart)
        restart
        ;;
    config)
      if [ "$#" -ne 3 ]; then
          echo "Usage: $0 config <key> <new_value>"
          exit 1
      fi
      key="$2"
      new_value="$3"
      update_config "$key" "$new_value"
      #restart
      ;;
    clear_logs)
      clear_logs
      ;;
    help)
      help
      ;;
    *)
      echo "Usage: $0 {start|stop|status|log|restart}"
      exit 1
      ;;
esac
