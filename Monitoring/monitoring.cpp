#include "monitoring.hpp"
#include "../Error_handling/error_handling.hpp"
#include "../Core/global.hpp"
#include <../Thread/thread.hpp>
#include <memory>
#include <boost/filesystem.hpp>
#include <chrono>
#include <iomanip>
#include <sstream>
#include <json/json.h> 
#include <thread>
#include <mutex>

std::string Monitoring::log_root;
std::mutex file_mutex;

void Monitoring::init(const std::string& log_directory)
{
    log_root =  log_directory;
    boost::filesystem::create_directories(log_root);
    auto now = std::chrono::system_clock::now();
    auto in_time_t = std::chrono::system_clock::to_time_t(now);

    std::stringstream ss;
    ss << log_root << "server_log/" << std::put_time(std::localtime(&in_time_t), "%Y-%m-%d_%H-%M-%S") << ".log";
    std::string log_file = ss.str();

    setupLogging(log_file);

     boost::log::add_common_attributes();
}

void Monitoring::log_info(bool show,const std::string& client_ip, const std::string& message) 
{
    auto task = [show,client_ip,message]()
    {
        std::lock_guard<std::mutex> lock(file_mutex);
        BOOST_LOG_SCOPED_THREAD_TAG("ClientIP", client_ip);
        BOOST_LOG_TRIVIAL(info) << client_ip << " : " << message;

        if (show) 
        {
            if(client_ip == "-")
            {
                std::cout <<  message << std::endl;
            }
            else
            {
                std::cout << client_ip << " : " << message << std::endl;
            }
        }
    };
    global_thread_pool.post(task);
}

void Monitoring::log_error(const std::string& client_ip, const std::string& message) 
{
    
    auto  task = [client_ip,message]()
    {
        BOOST_LOG_SCOPED_THREAD_TAG("ClientIP", client_ip);
        BOOST_LOG_TRIVIAL(error) << client_ip << " : " << message;
    };
    global_thread_pool.post(task);

}


void Monitoring::logUserActivity(const std::string& client_ip,
                                 const std::string& user_agent,
                                 const std::string& http_target,
                                 const Json::Value& json_payload) 
{
    std::lock_guard<std::mutex> lock(file_mutex);
    
    std::string json_file_path = log_root + "user_data/" + client_ip + ".json";
    boost::filesystem::create_directories(log_root + "user_data");

    Json::Value log_entries;
    Json::CharReaderBuilder reader_builder;
    std::ifstream json_file(json_file_path);
    std::string errs;

    if (json_file.is_open()) 
    {
        if (!Json::parseFromStream(reader_builder, json_file, &log_entries, &errs)) {
            BOOST_LOG_TRIVIAL(error) << "Failed to parse JSON file: " << json_file_path << ", Error: " << errs;
        }
        json_file.close();
    }

    int connection_count = log_entries.get("connection_count", 0).asInt() + 1;
    log_entries["connection_count"] = connection_count;

    auto now = std::chrono::system_clock::now();
    std::time_t now_time = std::chrono::system_clock::to_time_t(now);
    std::ostringstream time_stream;
    time_stream << std::put_time(std::localtime(&now_time), "%Y-%m-%d %H:%M:%S");

    if (connection_count == 1) {
        log_entries["user_agent"] = user_agent;
    }

    std::ostringstream connection_entry;
    connection_entry << time_stream.str() << "\n"
                     << "Target: " << http_target << "\n";

    if (!json_payload.isNull()) {
        connection_entry << "JSON Body: " << json_payload.toStyledString() << "\n";
    } else {
        connection_entry << "JSON Body: \n";
    }

    log_entries["connections"].append(connection_entry.str());

    std::ofstream json_file_out(json_file_path);
    if (json_file_out.is_open()) {
        json_file_out << log_entries;
        json_file_out.close();
    } else {
        BOOST_LOG_TRIVIAL(error) << "Failed to open JSON file for writing: " << json_file_path;
    }

    log_entries.clear();
}


void Monitoring::setupLogging(const std::string& log_file) 
{
    boost::log::add_file_log(
        boost::log::keywords::file_name = log_file,
        boost::log::keywords::rotation_size = std::size_t(10 * 1024 * 1024), 
        boost::log::keywords::format = "[%TimeStamp%] [%Severity%]: %Message%",
        boost::log::keywords::auto_flush = true
    );
    boost::log::core::get()->set_filter(
        boost::log::trivial::severity >= boost::log::trivial::info
    );
    boost::log::add_common_attributes();
}



