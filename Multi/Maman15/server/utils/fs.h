//
// Created by HPC on 09/08/2024.
//

#include <vector>
#include <string>

#ifndef SERVER_FILES_H

namespace fs_utils {


    namespace files {

        bool deleteFile(const std::string &path);

        bool saveFile(const std::string &path, const std::vector<char> &content);

        std::vector<char> getFileContent(const std::string &path);

    }

    namespace directories {
        std::vector<std::string> listDir(const std::string &path);

        void createDir(const std::string &path);
    }
}


#define SERVER_FILES_H

#endif //SERVER_FILES_H
