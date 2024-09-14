#ifndef ROUTING_HPP
#define ROUTING_HPP

#include <boost/beast/http.hpp>
#include <memory>
#include "../Core/session.hpp"
#include "../Error_handling/error_handling.hpp"
#include "../Core/response_generator.hpp"
#include "../File_Management/file_handler.hpp"

class Routing {
public:
    Routing(); 

    
    void processRequest(bool request_valid,const boost::beast::http::request<boost::beast::http::dynamic_body>& req,
                        std::shared_ptr<Session> session);
    bool isExternalRequest(const std::string& target);
    void handleExternalRequest(const std::string& target, const boost::beast::http::request<boost::beast::http::dynamic_body>& req,
                                    std::shared_ptr<Session> session);

private:
    ResponseGenerator response;
    FileManager file_manager;
    std::string client_ip;
};

#endif 