#ifndef CONNECTION_MANAGER_HPP
#define CONNECTION_MANAGER_HPP

#include <boost/asio.hpp>
#include <memory>
#include "session.hpp"
#include "../Configuration/config_parser.hpp"

using boost::asio::ip::tcp;

class Connection_manager {
public:
    Connection_manager(boost::asio::io_context& io_context, const Config& config);

private:
    void start_accept();
    void handle_accept(std::shared_ptr<Session> session, const boost::system::error_code& error_code);

    tcp::acceptor acceptor_;
    boost::asio::io_context& io_context_;
};

#endif // CONNECTION_MANAGER_HPP
