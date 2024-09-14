#ifndef ERROR_HPP
#define ERROR_HPP

#include <string>
#include <fstream>
#include <boost/asio.hpp>
#include <mutex>

enum SeverityLevel {
    INFO,
    WARNING,
    ERROR
};

class Error 
{
public:
     void start_log();
     
protected:
    std::string error_message;
    std::string log_file_name = "Error_logging.txt";

    std::string currentTime();
    void error_logging(const std::string& message, SeverityLevel level);
   

public:
    Error() = default;
    virtual ~Error() = default;
};

class General_error : public Error {
private:
    bool error_message_show;

public:
    General_error(bool show, const std::string& message, SeverityLevel level);
};

class Connection_error : public Error {
private:
    boost::system::error_code error;

public:
    Connection_error(const std::string& message, const boost::system::error_code& ec);
};

#endif 
