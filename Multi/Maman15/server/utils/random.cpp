//
// Created by HPC on 29/08/2024.
//

#include "random.h"


std::string generate_file_name(size_t length) {
    std::string characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    std::string fileName;
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<> dis(0, characters.size() - 1);

    for (size_t i = 0; i < length; ++i) {
        fileName += characters[dis(gen)];
    }

    return fileName;
}