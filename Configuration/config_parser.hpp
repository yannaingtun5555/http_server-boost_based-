#ifndef CONFIG_PARSER_HPP
#define CONFIG_PARSER_HPP


#include <string>

using namespace std;

class Config
{
    public:
        string host;
        unsigned int port;
        int connection_limit;
        string root_dir;
        bool show;
        void load(const string& file_path);      
};


#endif
