//
// Created by HPC on 09/08/2024.
//


#ifndef SERVER_SERIALIZE_H
#define SERVER_SERIALIZE_H

#include <map>

// Function to serialize a struct to a byte buffer
// A simple structure to represent a JSON object
struct SimpleJson {
    std::map<std::string, std::string> keyValuePairs;
};


SimpleJson parseJson(const std::string &jsonString);

#endif //SERVER_SERIALIZE_H
