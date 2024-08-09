//
// Created by HPC on 09/08/2024.
//


#include <sstream>
#include "serialize.h"
#include <nlohmann/json.hpp>


using json = nlohmann::json;

SimpleJson parseJson(const std::string &jsonString) {
    SimpleJson jsonObject;
    std::string::size_type startPos = jsonString.find('{');
    std::string::size_type endPos = jsonString.find('}');
    if (startPos == std::string::npos || endPos == std::string::npos) {
        throw std::runtime_error("Invalid JSON format");
    }

    std::string content = jsonString.substr(startPos + 1, endPos - startPos - 1);
    std::istringstream stream(content);
    std::string key, value;
    while (std::getline(stream, key, ':') && std::getline(stream, value, ',')) {
        // Remove surrounding quotes and trim spaces
        if (key.front() == '"') key.erase(0, 1);
        if (key.back() == '"') key.pop_back();
        if (value.front() == '"') value.erase(0, 1);
        if (value.back() == '"') value.pop_back();
        jsonObject.keyValuePairs[key] = value;
    }
    return jsonObject;
}