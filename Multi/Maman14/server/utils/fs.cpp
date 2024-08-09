//
// Created by HPC on 09/08/2024.
//

#include <iostream>
#include <fstream>
#include <filesystem>
#include <vector>
#include <string>
#include "fs.h"

namespace fs = std::filesystem;

bool fs_utils::files::deleteFile(const std::string &path) {
    try {
        return fs::remove(path);
    } catch (const fs::filesystem_error &e) {
        std::cerr << "Error deleting file: " << e.what() << std::endl;
        return false;
    }
}


std::vector<char> fs_utils::files::getFileContent(const std::string &path) {
    std::ifstream file(path, std::ios::binary);
    if (!file.is_open()) {
        std::cerr << "Error opening file: " << path << std::endl;
        return {};
    }

    // Get the size of the file
    file.seekg(0, std::ios::end);
    std::streamsize size = file.tellg();
    file.seekg(0, std::ios::beg);

    // Read the content into a vector
    std::vector<char> content(size);
    if (file.read(content.data(), size)) {
        file.close();
        return content;
    } else {
        file.close();
        std::cerr << "Error reading file: " << path << std::endl;
        return {};
    }
}

bool fs_utils::files::saveFile(const std::string &path, const std::vector<char> &content) {
    std::ofstream file(path, std::ios::binary);
    if (!file.is_open()) {
        std::cerr << "Error opening file for writing: " << path << std::endl;
        return false;
    }

    if (file.write(content.data(), content.size())) {
        file.close();
        return true;
    } else {
        file.close();
        std::cerr << "Error writing to file: " << path << std::endl;
        return false;
    }
}


std::vector<std::string> fs_utils::directories::listDir(const std::string &path) {
    std::vector<std::string> files;
    try {
        for (const auto &entry: fs::directory_iterator(path)) {
            files.push_back(entry.path().string());
        }
    } catch (const fs::filesystem_error &e) {
        std::cerr << "Error listing directory: " << e.what() << std::endl;
    }
    return files;
}