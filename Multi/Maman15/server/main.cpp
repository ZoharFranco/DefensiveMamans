//
// Created by HPC on 09/08/2024.
//

#include <iostream>
#include "utils/fs.h"
#include "server.h"


int main() {
    Server s(8080, "backup", 1);
    s.run();
    return 0;
}