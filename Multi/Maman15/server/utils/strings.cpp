//
// Created by HPC on 29/08/2024.
//

#include <vector>
#include <string>
#include "strings.h"


std::vector<char> getCharsFromLines(const std::vector<std::string> &lines) {
    std::vector<char> chars;

    for (const auto &line: lines) {
        for (char ch: line) {
            chars.push_back(ch);
        }
        chars.push_back('\n');
    }

    return chars;
}