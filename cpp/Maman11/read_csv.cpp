//
// Created by HPC on 29/07/2024.
//

#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <string>
#include <regex>
#include "read_csv.h"


std::vector<std::string> splitString(const std::string &str, char delimiter) {
    std::vector<std::string> tokens;
    std::string token;
    std::stringstream ss(str);
    while (std::getline(ss, token, delimiter)) {
        removeWhitespacesInPlace(token);
        tokens.push_back(token);
    }
    return tokens;
}


std::vector<std::vector<std::string>> readSplittableFileRows(const std::string &filePath, char delimiter) {
    std::vector<std::vector<std::string>> data;
    std::ifstream file(filePath);

    if (!file.is_open()) {
        std::cerr << "Could not open the file!" << std::endl;
        return data;
    }

    std::string line;
    while (std::getline(file, line)) {
        std::vector<std::string> lineData = splitString(line, delimiter);
        data.push_back(lineData);
    }

    file.close();
    return data;
}


std::vector<std::vector<std::string>> RowsToColumns(std::vector<std::vector<std::string>> &rows) {

    size_t numColumns = 0;
    // Determine the maximum number of columns
    for (const auto &row: rows) {
        numColumns = std::max(numColumns, row.size());
    }

    std::vector<std::vector<std::string>> columns(numColumns);

    // Populate column rows
    for (const auto &row: rows) {
        for (size_t col = 0; col < numColumns; ++col) {
            if (col < row.size()) {
                columns[col].push_back(row[col]);
            } else {
                columns[col].emplace_back(""); // Handle missing columns
            }
        }
    }

    return columns;

}


double sumListStrings(std::vector<std::string> &lst) {
    double sum = 0.0;
    for (auto &str: lst) {
        removeWhitespacesInPlace(str);
        if (isNumber(str)) {
            sum += std::stod(str);
        }
    }
    return sum;
}


bool isNumber(const std::string &s) {
    const std::regex numberPattern(R"(^[-+]?[0-9]*\.?[0-9]+([eE][-+]?[0-9]+)?$)");
    return std::regex_match(s, numberPattern);
}

void removeWhitespacesInPlace(std::string &str) {
    size_t j = 0;
    for (size_t i = 0; i < str.length(); ++i) {
        if (!std::isspace(static_cast<unsigned char>(str[i]))) {
            str[j++] = str[i];
        }
    }
    str.resize(j);
}


