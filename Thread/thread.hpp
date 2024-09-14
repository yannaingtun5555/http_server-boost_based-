#ifndef THREAD_POOL_HPP
#define THREAD_POOL_HPP

#include <boost/asio.hpp>
#include <boost/asio/thread_pool.hpp>

class ThreadPool {
public:
    ThreadPool(std::size_t num_threads) : pool_(num_threads) {}
    
    template<typename Task>
    void post(Task&& task) {
        boost::asio::post(pool_, std::forward<Task>(task));
    }

    void run() {
        pool_.join();
    }

    void join() {
        pool_.join();
    }

private:
    boost::asio::thread_pool pool_; 
};

#endif 
