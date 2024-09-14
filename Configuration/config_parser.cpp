#include "config_parser.hpp"
#include "../Error_handling/error_handling.hpp"
#include "../Monitoring/monitoring.hpp"
#include <iostream>
#include <fstream>
#include <sstream>
#include <filesystem>

using namespace std;


void Config::load(const string& file_path)
{
    Monitoring::log_info(true,"-","Attempting to open configuration file");
    ifstream config_file(file_path);
    
    if (!config_file.is_open())
    {
        cerr << "Failed to open configuration file: " << file_path << endl;
        General_error error(false, "Error occurred in opening configuration file", WARNING);
        Monitoring::log_error("-","Error occue in opeing configuration file");
        try 
        {
            std::ofstream def_config_file(file_path);
            if (!def_config_file.is_open()) 
            {
                throw General_error(true, "Error occurred in creating configuration file", ERROR);
            }

            def_config_file << "server_host=0.0.0.0\n";
            def_config_file << "server_port=8000\n";
            def_config_file << "root_dir=/var/www\n";

            Monitoring::log_info(true,"-","Default configuration file created.");
        } 
        catch (const General_error& e) {
            
            General_error(true,"Failed to create the default configuration file",ERROR);
            Monitoring::log_error("-","Error on creation of the default configuration file.");
            return;
        }
     }            

    Monitoring::log_info(true,"-","Configuration file opened successfully.");

    string line;
    while(getline(config_file,line))
    {
        istringstream per_line(line);
        string value,key;
        if (getline(per_line, key, '=') && getline(per_line, value))
        {
            if (key == "server_host") 
                host = value;
            else if (key == "server_port") 
                port = std::stoi(value);
            else if (key == "root_dir") 
                root_dir =   value;
        }
    }
    config_file.close();

    ifstream root(root_dir);

    if (!root.is_open())
    {
        General_error(true, "Error in opening root directory!", WARNING);
        Monitoring::log_error("-","Error in opening root directory.");
        std::string dir_path;
        std::cout << "Enter the root directory path to continue the server: ";
        std::getline(std::cin, dir_path);

        std::filesystem::path dir(dir_path);

        if (std::filesystem::exists(dir) && std::filesystem::is_directory(dir)) 
        {
            std::string dir_found= "Directory found:"+ dir_path;
            Monitoring::log_info(true,"-",dir_found);
            root_dir = dir_path;
        }
        else
        {
            std::cerr << "Directory not found: " << dir << std::endl;
            General_error(true, "Root directory loading failed: path not found!", ERROR);
            Monitoring::log_error("-","Root directory loading failed: path not found.");
            return;
        }
    }
    
    else 
    {
        Monitoring::log_info(true,"-","The root directory is opened at " + root_dir);
    }
}
