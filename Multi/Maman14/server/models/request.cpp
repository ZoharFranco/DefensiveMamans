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

void from_json(const nlohmann::json &j, Request &r) {

}
