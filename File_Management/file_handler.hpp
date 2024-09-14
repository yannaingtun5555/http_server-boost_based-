#ifndef FILE_MANAGER_HPP
#define FILE_MANAGER_HPP

#include <string>
#include <fstream>
#include <sstream>
#include <mutex>
#include "../Configuration/config_parser.hpp"


class FileManager {
public:
    
    FileManager(Config& config);
    FileManager();
    void createFile(const std::string& filePath);
    std::string readFile(const std::string& filePath); 
    bool writeFile(const std::string& filePath, const std::string& content);
    bool deleteFile(const std::string& filePath);
    bool fileExists(const std::string& filePath);
    bool copyFile(const std::string& sourcePath, const std::string& destinationPath);
    bool renameFile(const std::string& oldPath, const std::string& newPath);
    std::size_t getFileSize(const std::string& filePath);
    std::string rootDirectory;

private:
    std::mutex fileMutex;
};



#endif 
