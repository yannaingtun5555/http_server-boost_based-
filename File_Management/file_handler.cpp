#include "file_handler.hpp"
#include "../Error_handling/error_handling.hpp"
#include "../Configuration/config_parser.hpp"
#include "../Monitoring/monitoring.hpp"
#include "../Core/global.hpp"
#include <iostream>
#include <filesystem>
#include <sys/stat.h>
#include <sstream>
#include <iomanip>
#include <fstream>
#include <thread>
#include <mutex>
#include <boost/beast/http.hpp>

using namespace std;

FileManager::FileManager()
{
    rootDirectory = config.root_dir;
}

void FileManager::createFile(const std::string& filePath) {
    std::ofstream file(rootDirectory + filePath);
    if (!file.is_open()) {
        General_error err(true, "Failed to create file: " + filePath, ERROR);
        return;
    }
    file.close();
}


std::string FileManager::readFile(const std::string& filePath) 
{
    std::lock_guard<std::mutex> lock(fileMutex); 
    try
    {
    std::ifstream file(rootDirectory + filePath);
    std::stringstream buffer;
    if (file.is_open()) 
    {
        buffer << file.rdbuf();
        file.close();
        return buffer.str();
        Monitoring::log_info(false,"-",filePath + " is read for client");
        return buffer.str();
    } else 
    {
        Monitoring::log_error("-", "Failed to open file: " + filePath);
        return ""; 
    }
    
    }
    catch (const std::length_error& e) 
    {
        std::cerr << "Length error while reading file: " << e.what() << std::endl;
        Monitoring::log_error("-","Length error while reading");
        return ""; 
    } 
    
}

bool FileManager::writeFile(const std::string& filePath, const std::string& content) {
    std::ofstream file(rootDirectory + filePath,std::ios::out | std::ios::app);

    if (file.is_open()) 
    {
        file << content;
        file.close();
        return true;
    } 
    else 
    {
        return false;
    }
}

bool FileManager::deleteFile(const std::string& filePath) 
{
    std::lock_guard<std::mutex> lock(fileMutex); 
    std::filesystem::path path(rootDirectory + filePath);
    return std::filesystem::remove(path);
}

bool FileManager::fileExists(const std::string& filePath) 
{
    std::lock_guard<std::mutex> lock(fileMutex); 
    std::filesystem::path path(rootDirectory + filePath);
    return std::filesystem::exists(path);
}

bool FileManager::copyFile(const std::string& sourcePath, const std::string& destinationPath) {
    std::filesystem::path srcPath(rootDirectory + sourcePath);
    std::filesystem::path destPath(rootDirectory + destinationPath);
    try {
        std::filesystem::copy(srcPath, destPath, std::filesystem::copy_options::overwrite_existing);
        return true;
    } catch (const std::filesystem::filesystem_error& e) {
        General_error err(true, "File copy error: " + std::string(e.what()), ERROR);
        return false;
    }
}

bool FileManager::renameFile(const std::string& oldPath, const std::string& newPath) {
    std::filesystem::path oldFilePath(rootDirectory + oldPath);
    std::filesystem::path newFilePath(rootDirectory + newPath);
    try {
        std::filesystem::rename(oldFilePath, newFilePath);
        return true;
    } catch (const std::filesystem::filesystem_error& e) {
        General_error err(true, "File rename error: " + std::string(e.what()), ERROR);
        return false;
    }
}

std::size_t FileManager::getFileSize(const std::string& filePath) {
    std::filesystem::path path(rootDirectory + filePath);
    try {
        if (std::filesystem::exists(path)) {
            return std::filesystem::file_size(path);
        } else {
            return 0;
        }
    } catch (const std::filesystem::filesystem_error& e) {
        General_error err(true, "File size error: " + std::string(e.what()), ERROR);
        return 0;
    }
}
