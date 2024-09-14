#include "connection.hpp"
#include "session.hpp"  
#include "../Thread/thread.hpp"
#include "../Error_handling/error_handling.hpp"
#include "../Monitoring/monitoring.hpp"
#include "global.hpp"
#include <iostream>
#include <thread>
Connection_manager::Connection_manager(boost::asio::io_context& io_context, const Config& config)
    : acceptor_(io_context), io_context_(io_context)
{
    boost::system::error_code error;

    tcp::endpoint endpoint( boost::asio::ip::address_v4::any(), config.port);
    if (error) 
    {
        Connection_error err("Error creating IP address: ", error);
        Monitoring::log_error("-","Error at creating endpoint.");
        return;
    }
    Monitoring::log_info(false,"-","Completly created endpoind at port " + std::to_string(config.port));


    acceptor_.open(endpoint.protocol(), error);
    if (error) 
    {
        Connection_error err("Error opening acceptor: ", error);
        Monitoring::log_error("-","Error at creating acceptor.");
        return;
    }

    acceptor_.set_option(boost::asio::socket_base::reuse_address(true), error);
    if (error) 
    {
        Connection_error err("Error setting reuse_address option: ", error);
        Monitoring::log_error("-","Error at seting reuse address option.");
        return;
    }

    acceptor_.bind(endpoint, error);
    if (error)
    {
        Connection_error err("Error binding acceptor: ", error);
        Monitoring::log_error("-","Error at binding acceptor.");
        return;
    }

    acceptor_.listen(boost::asio::socket_base::max_listen_connections, error);
    if (error) 
    {
        Connection_error err("Error listening: ", error);
        Monitoring::log_error("-","Error at acceptor lisening.");
        return;
    }

    std::string log ="Connection_manager initialized with IP: " + acceptor_.local_endpoint().address().to_string() + " and Port: " + std::to_string(config.port );

    Monitoring::log_info(true,"-",log);
    start_accept();
}

void Connection_manager::start_accept()
{
    auto session = std::make_shared<Session>(tcp::socket(io_context_)); 
    acceptor_.async_accept(session->socket(),
        [this, session](boost::system::error_code error) 
        {
            handle_accept(session, error);
        });
}

void Connection_manager::handle_accept(std::shared_ptr<Session> session, const boost::system::error_code& error_code)
{
    if (!error_code)
    {
        global_thread_pool.post([session]() 
        {
            session->start();
        });
    }
    else
    {
        General_error err(true, "Error accepting connection: " + error_code.message(), ERROR);
    }
    start_accept(); 
}
