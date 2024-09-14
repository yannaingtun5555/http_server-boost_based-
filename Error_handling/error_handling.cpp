#include "error_handling.hpp"
#include "../Thread/thread.hpp"
#include "../Core/global.hpp"
#include <iostream>
#include <iomanip>
#include <chrono>
#include <ctime>
#include <sstream>
#include <fstream>
#include <thread>
#include <mutex>

std::mutex error_log_mutex;

std::string Error::currentTime() 
{
    auto now = std::chrono::system_clock::now();
    auto in_time_t = std::chrono::system_clock::to_time_t(now);
    std::stringstream ss;
    ss << std::put_time(std::localtime(&in_time_t), "%Y-%m-%d %X");
    return ss.str();
}

void Error::error_logging(const std::string& message, SeverityLevel level) 
{
    auto task = [this, message, level]() 
    {
        std::lock_guard<std::mutex> lock(error_log_mutex);
        try
        {
    std::ofstream log_file;           
    log_file.open(log_file_name, std::ios::in | std::ios::out | std::ios::app);
    if (log_file.is_open()) {
        log_file << "[" << currentTime() << "] ";
        switch (level) {
            case INFO: log_file << "[INFO] "; break;
            case WARNING: log_file << "[WARNING] "; break;
            case ERROR: log_file << "[ERROR] "; break;
        }
        log_file << message << std::endl;
        log_file.close();
    }
    else
    {
        std::cout << "Error in opening error_logging file" << std::endl;
    }
    }
    catch (const std::bad_alloc& e)
        {
            std::cerr << "Memory allocation error: " << e.what() << std::endl;
        }
    catch (const std::exception& e)
        {
            std::cerr << "Exception: " << e.what() << std::endl;
        }

    };
    global_thread_pool.post(task);
}

General_error::General_error(bool show, const std::string& message, SeverityLevel level)
    : error_message_show(show) {
    error_message = message;
    error_logging(error_message, level);
    if (error_message_show) {
        std::cerr << "Error: " << error_message << std::endl;
    }
}

Connection_error::Connection_error(const std::string& message, const boost::system::error_code& ec)
    : error(ec) {
    error_message = message + ": " + error.message();
    error_logging(error_message, ERROR);
    std::cerr << "Connection Error: " << error_message << std::endl;
}

void Error::start_log() {
    std::ofstream log_file(log_file_name, std::ios::app); 
    if (log_file.is_open()) {
        log_file << "\n[" << currentTime() << "] :Server Start:\n";
    } else {
        std::cerr << "Error opening log file for initialization: " << log_file_name << std::endl;
    }
}