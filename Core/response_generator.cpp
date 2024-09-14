#include "response_generator.hpp"
#include "../Monitoring/monitoring.hpp"
#include "../Thread/thread.hpp"
#include "global.hpp"
#include <boost/beast/core.hpp>
#include <boost/beast/http.hpp>
#include <thread>
#include <iostream>
#include <mutex>

std::mutex response_mutex;

ResponseGenerator::ResponseGenerator() {}

void ResponseGenerator::generateAndSendResponse(const boost::beast::http::request<boost::beast::http::dynamic_body>& req,
                                               std::shared_ptr<Session> session, 
                                               const std::string& content,unsigned short status_code) 
{
    endpoint = session ->socket().remote_endpoint();
    client_ip = endpoint.address().to_string();
    auto task = [this, req, session, content, status_code]() 
    {
        try
        {
            std::lock_guard<std::mutex> lock(response_mutex);
            boost::beast::http::response<boost::beast::http::string_body> res;
    
            switch (status_code) 
            {
                case 200:
                res.result(boost::beast::http::status::ok);
                break;
                case 400:
                res.result(boost::beast::http::status::bad_request);
                break;
                case 404:
                res.result(boost::beast::http::status::not_found);
                break;
                case 500:
                res.result(boost::beast::http::status::internal_server_error);
                break;
                default:
                res.result(boost::beast::http::status::internal_server_error);
                break;
            }
    res.version(req.version());
    setResponseHeaders(res, req);
    res.body() = content;

    res.prepare_payload();

    Monitoring::log_info(false,endpoint.address().to_string(),"Response sent for client");

     boost::beast::http::write(session->socket(), res);
    } 
    catch (const std::bad_alloc& e) 
    {
        std::cerr << "Memory allocation failed in response generation: " << e.what() << std::endl;    
        Monitoring::log_error(endpoint.address().to_string(),"Error with memory allocation failed in response generator");

    } 
    catch (const std::length_error& e) 
    {
        std::cerr << "String operation error: " << e.what() << std::endl;
        Monitoring::log_error(endpoint.address().to_string(),"Error with memory allocation failed in response generator");

    }
    };
    global_thread_pool.post(task);
}

void ResponseGenerator::setResponseHeaders(boost::beast::http::response<boost::beast::http::string_body>& res, 
                                           const boost::beast::http::request<boost::beast::http::dynamic_body>& req) 
{
   
    res.set(boost::beast::http::field::server, "HTTP_Server");
   
    if (req.find(boost::beast::http::field::content_type) != req.end()) 
{
        std::string content_type = std::string(req[boost::beast::http::field::content_type]);
        std::cout << "Received Content-Type: " << content_type << std::endl;

        
        if (content_type == "application/json")
        {
            res.set(boost::beast::http::field::content_type, "application/json");
        }
        else if (content_type == "text/html") 
        {
            res.set(boost::beast::http::field::content_type, "text/html");
            std::cout << "html content has response" << std::endl;
        }
        else if (content_type == "text/plain") 
        {
            res.set(boost::beast::http::field::content_type, "text/plain");
        }
        else if (content_type == "image/png") 
        {
            res.set(boost::beast::http::field::content_type, "image/png");
        }
        else 
        {
            res.result(boost::beast::http::status::unsupported_media_type);
            res.set(boost::beast::http::field::content_type, "text/plain");
        }
    res.keep_alive(req.keep_alive());
}

}
                                           
