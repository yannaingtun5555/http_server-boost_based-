# Simple HTTP Server

A lightweight and modular HTTP server designed to handle requests and serve files efficiently. The server is built with C++17 (or higher) using Boost.Asio and Boost.Beast libraries. It can be used as a standalone server for web projects and includes a multi-threaded architecture.

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)

## Features

- Handles HTTP/1.1 requests and responses
- Multi-threaded with Boost.Asio thread pool
- Logging system for connection and error tracking
- Static content serving
- Configurable with a `config.txt`
- Supports modern C++ features

## Installation

### Requirements

- C++17 or higher
- Boost Libraries (for developments)
- `jsoncpp` (for developments)
- Ubuntu (preferred OS, supports other Linux distributions)

### Building the Server

1. Clone the repository:
    ```bash
    git clone https://github.com/yannaingtun5555/http_server-boost_based-.git
    cd http-server
    ```

2. Build the server:
    ```bash
    mkdir build
    cd build
    cmake ..
    make
    ```

3. (Optional) Run the provided Bash script for setting up the server as a daemon:
    ```bash
    ./scripts/setup_daemon.sh
    ```

### Dependencies

The project links Boost libraries and `jsoncpp` statically, so users don't need to install them separately. 

## Usage

1. **Initial Configuration:**
   - Run the `./setup.sh` script to configure the server for the first time. This script will gain permission for using /var/www/html
   
2. **Manual Configuration:**
   - Alternatively, you can manually configure the server by editing the `config.txt` file:
     ```txt
     host=0.0.0.0
     port=8080
     root_dir=/var/www/html
     default_file=index.html
     connection_limit=100
     ```

3. **Running the Server:**
   - After the initial configuration, use the `./http_server.sh` script to manage the server. Available commands include:
     ```bash
     ./http_server.sh start    # Start the server in the background
     ./http_server.sh stop     # Stop the server
     ./http_server.sh status   # Check the server status
     ./http_server.sh log      # View server logs
     ./http_server.sh restart  # Restart the server
     ./http_server.sh config   # Reconfigure the server
     ./http_server.sh clearlog # Clear the log file
     ./http_server.sh help     # Show help options
     ```

   - For example, to start the server:
     ```bash
     ./http_server.sh start
     ```

4. **Log Access:**
   - You can view server logs using the `log` command:
     ```bash
     ./http_server.sh log
     ```
    - All if the log files are exists at HTTP_Server/logs

     ```bash
     cd HTTP_Server/logs/server_log  #To view the server logs information
     cd HTTP_Server/logs/user_data   #To view the connected clients information
     ```

## Configuration

The server reads configurations from a `config.json` file. Key fields include:

- `host`: The IP address the server will bind to.
- `port`: The port number the server will listen on.
- `root_dir`: The directory from which files will be served.



