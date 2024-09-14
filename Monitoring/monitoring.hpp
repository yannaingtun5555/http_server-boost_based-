#ifndef MONITORING_HPP
#define MONITORING_HPP

#include <boost/log/trivial.hpp>
#include <boost/log/sources/logger.hpp>
#include <boost/log/utility/setup/file.hpp>
#include <boost/log/utility/setup/common_attributes.hpp>
#include <boost/log/utility/setup/console.hpp>
#include <boost/log/expressions.hpp>
#include <boost/log/sources/global_logger_storage.hpp>
#include <boost/log/sinks/text_file_backend.hpp>
#include <boost/log/sinks/sync_frontend.hpp>
#include <boost/log/utility/manipulators/add_value.hpp>
#include <boost/log/attributes/scoped_attribute.hpp>
#include <string>
#include <json/json.h> 


BOOST_LOG_GLOBAL_LOGGER(global_logger, boost::log::sources::severity_logger_mt<boost::log::trivial::severity_level>)

class Monitoring
{
    public:
        Monitoring();
        static void init(const std::string& log_directory);
        static void log_info(bool show,const std::string& client_ip, const std::string& message);
        static void log_error(const std::string& client_ip, const std::string& message);
        static void logUserActivity(const std::string& client_ip,
                                 const std::string& user_agent,
                                 const std::string& http_target,
                                 const Json::Value& json_payload) ;
    private:
        static void setupLogging(const std::string& log_file);
        static std::string log_root;
};
#endif // MONITORING_HPP
