//
// Created by Zohar Franco on 28/07/2024.
//

#include <iostream>
#include <filesystem>

#include "maman11.h"
#include "my_vec.h"
#include "vecs_all.h"
#include "read_csv.h"


#include <windows.h>
#include <string>

std::string getFullPathWithRelative(const std::string &relativePath) {
    char cwd[MAX_PATH];
    if (GetCurrentDirectory(MAX_PATH, cwd)) {
        std::string fullPath = std::string(cwd) + "\\" + relativePath;
        return fullPath;
    } else {
        return "Error retrieving current working directory";
    }
}

void ex2() {
    // Create vectors
    Vector3D a(1, -4, 6);
    Vector3D b(0, -8, 6);
    Vector3D z;

    // Show actions on vectors
    std::cout << "a+b is " << a + b << std::endl;
    z.setY(14);
    std::cout << "8 * b is " << b * 8 << std::endl;
    std::cout << "but z * b is " << z * b << std::endl;
}

void ex3() {
    // Create NamedVector list
    int size = 3;
    NamedVector3D *namedVectorsList = createNamedVector3DList(size);

    // Get vector by chosen name
    std::string name;
    std::cout << "Enter a name to search:";
    std::getline(std::cin, name);
    std::cout << getNamedVector3DByName(namedVectorsList, size, name) << std::endl;
}

void ex4() {
    // Set file path to read
    std::string filePath;
    std::cout << "Enter a file path to parse:";
    std::getline(std::cin, filePath);

    // Get rows from file
    std::vector<std::vector<std::string>> rows = readSplittableFileRows(filePath, ',');

    // Calculate rows sums
    for (int i = 0; i < rows.size(); i++) {
        std::cout << "Row " << i << " sum: " << sumListStrings(rows[i]) << std::endl;
    }

    // Get columns from rows
    std::vector<std::vector<std::string>> columns = RowsToColumns(rows);

    // Calculate columns sums
    for (int i = 0; i < columns.size(); i++) {
        std::cout << "Column " << i << " sum: " << sumListStrings(columns[i]) << std::endl;
    }
}


int main() {

    // ex 2
    std::cout << "\n--Ex2--" << std::endl;
    ex2();
    std::cout << "--Ex2--" << std::endl;

    // ex 3
    std::cout << "\n--Ex3--" << std::endl;
    ex3();
    std::cout << "--Ex3--" << std::endl;

    // ex 4
    std::cout << "\n--Ex4--" << std::endl;
    ex4();
    std::cout << "--Ex4--" << std::endl;

    return 0;
}