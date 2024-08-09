
#include <winsock2.h>

#pragma comment(lib, "Ws2_32.lib")

#include <cstring>
#include <iostream>
#include <winsock.h>
#include <chrono>
#include "models/request.h"
#include "models/response.h"
#include "utils/fs.h"
#include "server.h"
#include "utils/serialize.h"


int Server::run() {
    WSADATA wsaData;
    SOCKET server_socket, client_socket;
    sockaddr_in server_address{}, client_address{};

    server_address.sin_family = AF_INET;
    server_address.sin_addr.s_addr = INADDR_ANY;

    const int PORT = 8080;
    server_address.sin_port = htons(PORT);


    if (WSAStartup(MAKEWORD(2, 2), &wsaData) != 0) {
        std::cerr << "WSAStartup failed." << std::endl;
        return 1;
    }

    server_socket = socket(AF_INET, SOCK_STREAM, 0);
    if (server_socket == INVALID_SOCKET) {
        std::cerr << "Failed to create socket." << std::endl;
        WSACleanup();
        return 1;
    }

    int bind_status = bind(server_socket, (struct sockaddr *) &server_address, sizeof(server_address));
    int listen_status = listen(server_socket, 5);
    if (bind_status == SOCKET_ERROR || listen_status == SOCKET_ERROR) {
        std::cerr << "Binding \\ listen failed." << std::endl;
        closesocket(server_socket);
        WSACleanup();
        return 1;
    }

    std::cout << "Server listening on port " << PORT << std::endl;

    int clientAddrLen = sizeof(client_address);

    auto startTime = std::chrono::steady_clock::now();
    std::chrono::seconds durationToCheck(120);
    auto currentTime = std::chrono::steady_clock::now();
    auto remainingSeconds = std::chrono::duration_cast<std::chrono::seconds>(currentTime - startTime).count();
    std::cout << "Time remaining: " << remainingSeconds << " seconds." << std::endl;
    while (currentTime - startTime <= durationToCheck) {
        currentTime = std::chrono::steady_clock::now();
        client_socket = accept(server_socket, (struct sockaddr *) &client_address, &clientAddrLen);
        std::cout << "New connection in port - " << client_address.sin_port << std::endl;
        if (client_socket == INVALID_SOCKET) {
            continue;
        }
        this->run_client(client_socket);
    }

    closesocket(server_socket);
    WSACleanup();

    return 0;

}

void Server::run_client(SOCKET client_socket) {
    char buffer[CONNECTION_BUFFER_SIZE];
    int bytes_read;

    while (true) {
        std::memset(buffer, 0, sizeof(buffer));
        bytes_read = recv(client_socket, buffer, sizeof(buffer), 0);
        if (bytes_read <= 0) break;


        nlohmann::json j = nlohmann::json::parse(buffer);
        Request request = j.get<Request>();


        Response response = this->_handle_request(request);
        response.size = 100;
        response.status = static_cast<ResponseTypes>(111);
        nlohmann::json r = response;

        size_t bufferSize;

        std::string serialized_json = r.dump(); // or j.dump(4) for pretty print
        std::cout << "Serialized JSON: " << serialized_json << std::endl;
        const char *response_chars = serialized_json.c_str();
        send(client_socket, response_chars, (int) strlen(response_chars), 0);
    }
    closesocket(client_socket);

}

Response Server::_get_files_list(const Request &request) const {
    fs_utils::directories::listDir(request.file_name);
    return {};
}

Response Server::_save_file(const Request &request) const {
    int status = fs_utils::files::saveFile(request.file_name, request.payload);
    return (Response) {};
}

Response Server::_remove_file(const Request &request) const {
    int status = fs_utils::files::deleteFile(request.file_name);
    return {};
}

Response Server::_get_file(const Request &request) const {
    fs_utils::files::getFileContent(request.file_name);
    return {};
}


Response Server::_send_response(const Response &response) const {
    return Response();
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
    return this->_send_response(response);
}





