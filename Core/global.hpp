#ifndef GLOBAL_HPP
#define GLOBAL_HPP

#include <boost/asio.hpp>
#include <boost/asio/thread_pool.hpp>
#include "../Configuration/config_parser.hpp"
#include "../Thread/thread.hpp"


extern boost::asio::io_context io_context;
extern ThreadPool global_thread_pool;
extern Config config;

#endif // GLOBAL_HPP
