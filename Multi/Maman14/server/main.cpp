//
// Created by HPC on 09/08/2024.
//

#include <iostream>
#include "utils/fs.h"
#include "server.h"

void printVector(const std::vector<std::string> &vec) {
    std::cout << "[";
    for (size_t i = 0; i < vec.size(); i++) {
        std::cout << "\"" << vec[i] << "\"";
        if (i < vec.size() - 1) {
            std::cout << ", ";
        }
    }
    std::cout << "]" << std::endl;
}

int main() {
    Server s("", "");
    s.run();
    return 0;
}