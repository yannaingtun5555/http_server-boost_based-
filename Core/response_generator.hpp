#ifndef RESPONSE_GENERATOR_HPP
#define RESPONSE_GENERATOR_HPP

#include <boost/beast/http.hpp>
#include <memory>
#include <boost/asio.hpp>
#include "session.hpp"

class ResponseGenerator {
public:
    ResponseGenerator();
    void generateAndSendResponse(const boost::beast::http::request<boost::beast::http::dynamic_body>& req,std::shared_ptr<Session> session, const std::string& content,unsigned short status_code);

private:
    void setResponseHeaders(boost::beast::http::response<boost::beast::http::string_body>& res, 
                                            const boost::beast::http::request<boost::beast::http::dynamic_body>& req) ;
    boost::asio::ip::tcp::endpoint endpoint;
    std::string client_ip;
};

#endif
