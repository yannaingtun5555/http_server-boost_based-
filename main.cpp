#include <boost/asio.hpp>
#include "Core/connection.hpp"
#include "Configuration/config_parser.hpp"
#include "File_Management/file_handler.hpp"
#include "Error_handling/error_handling.hpp"
#include "Thread/thread.hpp"
#include "Monitoring/monitoring.hpp"
#include "Core/global.hpp"
#include <iostream>
#include <json/json.h> 


using namespace std;
int main() 
{
    Monitoring::init("logs/");
    Error error_log;
    error_log.start_log();
    General_error err(false,"this is testing error",ERROR);
    config.load("config.txt");
    Connection_manager connection_manager(io_context, config);
    io_context.run();
    global_thread_pool.join();

    return 0;
}
