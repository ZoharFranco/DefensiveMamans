//
// Created by HPC on 06/08/2024.
//

#include "request.h"

void to_json(nlohmann::json &j, const Request &r) {
    j = nlohmann::json{
            {"version",   r.version},
            {"type",      r.type},
            {"name_len",  r.name_len},
            {"file_name", r.file_name},
            {"size",      r.size},
            {"payload",   r.payload},

    };
}

// from_json function to deserialize JSON to a Request object
void from_json(const nlohmann::json &j, Request &r) {
    j.at("user_id").get_to(r.user_id);
    j.at("version").get_to(r.version);
    j.at("type").get_to(r.type);
    j.at("name_len").get_to(r.name_len);
    j.at("file_name").get_to(r.file_name);
    j.at("size").get_to(r.size);

    // Handling payload as a string, then converting to std::vector<char>
    std::string payload_str = j.at("payload").get<std::string>();
    r.payload = std::vector<char>(payload_str.begin(), payload_str.end());
}