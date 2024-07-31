//
// Created by Zohar Franco on 29/07/2024.
//

#ifndef MAMAN11_READ_CSV_H
#define MAMAN11_READ_CSV_H


#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <string>
#include <regex>
#include "read_csv.h"


std::vector<std::string> splitString(const std::string &str, char delimiter);

std::vector<std::vector<std::string>> readSplittableFileRows(const std::string &filePath, char delimiter);

std::vector<std::vector<std::string>> RowsToColumns(std::vector<std::vector<std::string>> &rows);

double sumListStrings(std::vector<std::string> &lst);

bool isNumber(const std::string &s);

void removeWhitespacesInPlace(std::string &str);


#endif //MAMAN11_READ_CSV_H
