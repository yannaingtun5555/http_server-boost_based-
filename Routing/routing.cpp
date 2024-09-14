#include "routing.hpp"
#include "../Error_handling/error_handling.hpp"
#include "../File_Management/file_handler.hpp"
#include "../Configuration/config_parser.hpp"
#include "../Core/response_generator.hpp"
#include "../Monitoring/monitoring.hpp"
#include "../Thread/thread.hpp"
#include "../Core/global.hpp"
#include <boost/beast/http.hpp>
#include <iostream>
#include <string>
#include <thread>
#include <mutex>
#include <regex>

Routing::Routing() {}
std::mutex mtx;

void Routing::processRequest(bool request_valid,const boost::beast::http::request<boost::beast::http::dynamic_body>& req,
                             std::shared_ptr<Session> session) 
{

auto task = [this, request_valid, req, session]() mutable {
try{
    std::lock_guard<std::mutex> lock(mtx);
    
    std::string content;
    std::string target = std::string(req.target());

    boost::asio::ip::tcp::endpoint remote_ep = session->socket().remote_endpoint();
    client_ip = remote_ep.address().to_string();


    std::cout << "Entering task with target: " << target << std::endl;
    Monitoring::log_info(false,client_ip,"Client  requested: " + target);
    auto& socket = session->socket();
    
    if(!request_valid)
    {
        content = file_manager.readFile("/error/400.html");
        std::cout << client_ip <<" bad request:400" << std::endl;
        response.generateAndSendResponse(req,session,content,400);
        Monitoring::log_info(false,client_ip,"User is response with 400");
        return;
    }
    if (req.method_string() == "GET")
    {
        
        if (file_manager.fileExists(target))
        {
            content = file_manager.readFile(target);
            std::cout << client_ip << " replied with " << target << std::endl; 
            response.generateAndSendResponse(req, session, content, 200); 
        }
        else
        {
            content = file_manager.readFile("/error/404.html");
            response.generateAndSendResponse(req, session, content, 404); 
            Monitoring::log_info(true,client_ip,"User is response with 404:" + target);

        }
    }
    else if (req.method_string() == "POST")
    {
    
        std::string request_body = boost::beast::buffers_to_string(req.body().data());
        try
        {
            file_manager.writeFile(target, request_body); 
            std::cout << client_ip << " created or updated file " << target << std::endl;
            response.generateAndSendResponse(req, session, content, 201); 
        }
        catch (const std::exception& e)
        {
            General_error err(true,"Internal Server Error in file creation: ",ERROR );
            content = file_manager.readFile("/error/500.html");
            response.generateAndSendResponse(req, session, content, 500); 
        }
    }

    else
    {
        content = "Method Not Allowed";
        response.generateAndSendResponse(req, session, content, 405); 
    }
    

    } catch (const std::system_error& e) {
            std::cerr << "System error: " << e.what() << std::endl;
        } catch (const std::exception& e) {
            std::cerr << "Exception: " << e.what() << std::endl;
        }
    };
    global_thread_pool.post(task);
}