//
// Created by HPC on 06/08/2024.
//

#include <cstring>
#include "response.h"

// Serialization
void to_json(nlohmann::json &j, const Response &r) {
    j = nlohmann::json{
            {"version",   r.version},
            {"status",    r.status},
            {"name_len",  r.name_len},
            {"file_name", r.file_name},
            {"size",      r.size},
            {"payload",   r.payload},

    };
}

// Deserialization
void from_json(const nlohmann::json &j, Response &r) {
    j.at("version").get_to(r.version);
    j.at("status").get_to(r.status);
    j.at("name_len").get_to(r.name_len);
    j.at("file_name").get_to(r.file_name);
    j.at("size").get_to(r.size);
    j.at("payload").get_to(r.payload);
}