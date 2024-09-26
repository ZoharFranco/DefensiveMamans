
#include <winsock2.h>

#pragma comment(lib, "Ws2_32.lib")

#include <cstring>
#include <iostream>
#include <thread>

#include <chrono>
#include "models/request.h"
#include "models/response.h"
#include "utils/fs.h"
#include "server.h"
#include "utils/random.h"
#include "utils/strings.h"


int Server::run() {

    SOCKET server_socket, client_socket = 0;
    sockaddr_in client_address{};

    fs_utils::directories::createDir(this->backup_path);
    std::cout << "Backup    directory " << this->backup_path << std::endl;

    server_socket = this->create_server_socket();
    std::cout << "Server listening on port " << this->port << std::endl;

    int clientAddrLen = sizeof(client_address);
    std::vector<std::thread> threads;

    while (client_socket != INVALID_SOCKET) {
        client_socket = accept(server_socket, (struct sockaddr *) &client_address, &clientAddrLen);
        std::cout << "New connection in port - " << client_address.sin_port << std::endl;
        if (client_socket == INVALID_SOCKET) continue;
        threads.emplace_back(&Server::run_client, this, client_socket);
    }

    // Join all threads
    for (auto &t: threads) {
        t.join();
    }

    closesocket(server_socket);
    WSACleanup();

    return SUCCESS;
}

SOCKET Server::create_server_socket() const {
    WSADATA wsaData;
    SOCKET server_socket;
    sockaddr_in server_address = this->create_server_address();

    if (WSAStartup(MAKEWORD(2, 2), &wsaData) != 0) {
        std::cerr << "WSAStartup failed." << std::endl;
        return WSA_STARTUP_FAILED;
    }

    server_socket = socket(AF_INET, SOCK_STREAM, 0);
    if (server_socket == INVALID_SOCKET) {
        std::cerr << "Create socket failed." << std::endl;
        WSACleanup();
        return CREATE_SOCKET_FAILED;
    }

    int bind_status = bind(server_socket, (struct sockaddr *) &server_address, sizeof(server_address));
    int listen_status = listen(server_socket, 5);
    if (bind_status == SOCKET_ERROR || listen_status == SOCKET_ERROR) {
        std::cerr << "Binding \\ listen failed." << std::endl;
        closesocket(server_socket);
        WSACleanup();
        return BINDING_LISTEN_FAILED;
    }

    return server_socket;
}

sockaddr_in Server::create_server_address() const {
    sockaddr_in server_address{};
    server_address.sin_family = AF_INET;
    server_address.sin_addr.s_addr = INADDR_ANY;
    server_address.sin_port = htons(this->port);
    return server_address;
}

int Server::run_client(SOCKET client_socket) {
    char buffer[CONNECTION_BUFFER_SIZE];
    std::string response_string;

    while (true) {
        std::memset(buffer, 0, sizeof(buffer));
        if (recv(client_socket, buffer, sizeof(buffer), 0) <= 0) break;

        Request request = Server::parse_request(buffer);
        Response response = this->_handle_request(request);
        response_string = Server::dumps_response(response);

        send(client_socket, response_string.c_str(), (int) strlen(response_string.c_str()), 0);
    }

    closesocket(client_socket);
    return SUCCESS;
}


Request Server::parse_request(char *request_buffer) {
    nlohmann::json j = nlohmann::json::parse(request_buffer);
    std::cout << "Serialized Request JSON: " << j << std::endl;
    Request request = j.get<Request>();
    return request;
}

std::string Server::dumps_response(const Response &response) {
    nlohmann::json response_json = response;
    std::string serialized_json = response_json.dump();
    std::cout << "Serialized Response JSON: " << serialized_json << std::endl;
    return serialized_json;
}


Response Server::_get_files_list(const Request &request) const {
    std::string dir_path = this->backup_path + "\\" + std::to_string(request.user_id);
    std::vector<std::string> files = fs_utils::directories::listDir(dir_path);

    if (files.empty()) {
        return (Response) {
                .version=this->version,
                .status = ResponseType::NO_FILES_EXIST
        };
    }

    std::string list_file_name = generate_file_name(FILES_LIST_FILE_NAME) + ".txt";
    bool save_status = fs_utils::files::saveFile(list_file_name, getCharsFromLines(files));

    if (!save_status) {
        return (Response) {
                .version=this->version,
                .status=ResponseType::INTERNAL_ERROR
        };
    }

    std::vector<char> content = fs_utils::files::getFileContent(list_file_name);
    return (Response) {
            .version=this->version,
            .status = ResponseType::GET_ALL_FILES_LIST_SUCCESS,
            .name_len = static_cast<unsigned int>(list_file_name.length()),
            .file_name = list_file_name,
            .size=static_cast<unsigned int>(content.size()),
            .payload=content
    };

}

Response Server::_save_file(const Request &request) const {
    std::string user_dir_path = this->backup_path + "\\" + std::to_string(request.user_id);
    fs_utils::directories::createDir(user_dir_path);
    std::string file_path = user_dir_path + "\\" + request.file_name;
    bool status = fs_utils::files::saveFile(file_path, request.payload);

    if (status) {
        return (Response) {
                .version=this->version,
                .status=ResponseType::REMOVE_OR_SAVE_TO_BACKUP_SUCCESS,
                .file_name=request.file_name,
                .size=request.size
        };
    } else {
        return (Response) {
                .version=this->version,
                .status=ResponseType::INTERNAL_ERROR
        };
    }

}

Response Server::_remove_file(const Request &request) const {
    std::string file_path = this->backup_path + "\\" + std::to_string(request.user_id) + "\\" + request.file_name;
    int status = fs_utils::files::deleteFile(file_path);

    if (status) {
        return (Response) {
                .version=this->version,
                .status=ResponseType::REMOVE_OR_SAVE_TO_BACKUP_SUCCESS,
                .name_len=static_cast<unsigned int>(request.file_name.length()),
                .file_name=request.file_name
        };
    } else {
        return (Response) {
                .version=this->version,
                .status=ResponseType::FILE_NOT_EXIST,
                .name_len=static_cast<unsigned int>(request.file_name.length()),
                .file_name=request.file_name
        };
    }
}

Response Server::_get_file(const Request &request) const {
    std::string file_path = this->backup_path + "\\" + std::to_string(request.user_id) + "\\" + request.file_name;
    std::vector<char> content = fs_utils::files::getFileContent(file_path);

    if (!content.empty()) {
        return (Response) {
                .version = this->version,
                .status=ResponseType::GET_FROM_BACKUP_SUCCESS,
                .name_len=static_cast<unsigned int>(request.file_name.length()),
                .file_name=request.file_name,
                .size=static_cast<unsigned int>(content.size()),
                .payload=content
        };
    } else {
        return (Response) {
                .version=this->version,
                .status=ResponseType::FILE_NOT_EXIST,
                .name_len=static_cast<unsigned int>(request.file_name.length()),
                .file_name=request.file_name
        };
    }
}


Response Server::_handle_request(const Request &request) const {
    Response response;
    switch (request.type) {
        case RequestTypes::SAVE_TO_BACKUP:;
            response = this->_save_file(request);
            break;
        case RequestTypes::GET_FROM_BACKUP:
            response = this->_get_file(request);
            break;
        case RequestTypes::REMOVE_FROM_BACKUP:
            response = this->_remove_file(request);
            break;
        case RequestTypes::GET_ALL_FILES_LIST:
            response = this->_get_files_list(request);
            break;
        default:
            response = {};
            break;
    }
    return response;
}











