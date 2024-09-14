#include <memory>
#include <boost/beast/http.hpp>
#include <boost/asio.hpp>
#include <boost/beast/core.hpp>
#include <boost/beast/http.hpp>
#include "session.hpp"
#include "../Routing/routing.hpp"

class Request_handler : public std::enable_shared_from_this<Request_handler> 
{
public:
    Request_handler(std::shared_ptr<Session> session);

    void handleRequest(std::shared_ptr<boost::beast::http::request<boost::beast::http::dynamic_body>> req);

private:
    boost::asio::ip::tcp::endpoint endpoint;
    std::shared_ptr<Session> session;
    bool isValidRequest(const boost::beast::http::request<boost::beast::http::dynamic_body>& req);
    Routing routing;
};
