//
// Created by HPC on 06/08/2024.
//

#ifndef SERVER_RESPONSE_H
#define SERVER_RESPONSE_H

#include <iostream>
#include <string>
#include <vector>
#include <cstdint>
#include <nlohmann/json.hpp>

enum class ResponseTypes : int {
    GET_FROM_BACKUP_SUCCESS = 210,
    GET_ALL_FILES_LIST_SUCCESS = 211,
    REMOVE_OR_SAVE_TO_BACKUP_SUCCESS = 212,
    FILE_NOT_EXIST = 1001,
    NO_FILES_EXIST = 1002,
    INTERNAL_ERROR = 1003
};

struct Response {
    std::string version;
    ResponseTypes status;
    int name_len;
    std::string file_name;
    int size;
    std::vector<uint8_t> payload; // Using vector of uint8_t to represent bytes

    // Serialization
    friend void to_json(nlohmann::json &j, const Response &r);

    // Deserialization
    friend void from_json(const nlohmann::json &j, Response &);

};

#endif //SERVER_RESPONSE_H
