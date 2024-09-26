//
// Created by HPC on 06/08/2024.
//

#ifndef SERVER_REQUEST_H
#define SERVER_REQUEST_H

#include <iostream>
#include <string>
#include <vector>
#include <cstdint>
#include <nlohmann/json.hpp>

/*!
 *
 */
enum class RequestTypes : int {
    SAVE_TO_BACKUP = 100,
    GET_FROM_BACKUP = 200,
    REMOVE_FROM_BACKUP = 201,
    GET_ALL_FILES_LIST = 202
};


/*!
 *
 */
struct Request {
    unsigned int user_id;
    unsigned int version;
    RequestTypes type;
    unsigned int name_len;
    std::string file_name;
    unsigned int size;
    std::vector<char> payload; // Using vector of


    // Serialization
    friend void to_json(nlohmann::json &j, const Request &r);

    // Deserialization
    friend void from_json(const nlohmann::json &j, Request &r);
};

#endif //SERVER_REQUEST_H
