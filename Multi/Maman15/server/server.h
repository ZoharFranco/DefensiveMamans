//
// Created by HPC on 06/08/2024.
//

#ifndef SERVER_SERVER_H
#define SERVER_SERVER_H

#define CONNECTION_BUFFER_SIZE 2048
#define SUCCESS 0
#define WSA_STARTUP_FAILED 2
#define CREATE_SOCKET_FAILED 3
#define BINDING_LISTEN_FAILED 4

#define FILES_LIST_FILE_NAME 32


#include <winsock2.h>
#include <ws2tcpip.h>
#include <string>
#include <algorithm>
#include <random>
#include <fstream>
#include <sstream>
#include <utility>
#include "models/request.h"
#include "models/response.h"

class Server {
/*
 * Server class
 * handle all server connections with the clients
 */

public:

    Server(unsigned int port, std::string backup_path, unsigned int version) : port(port),
                                                                               backup_path(std::move(backup_path)),
                                                                               version(version) {}

    int run();


private:
    unsigned int port;
    unsigned int version;
    std::string backup_path;

    [[nodiscard]] SOCKET create_server_socket() const;

    [[nodiscard]] sockaddr_in create_server_address() const;


    int run_client(SOCKET client_socket);

    static Request parse_request(char *request_buffer);

    static std::string dumps_response(const Response &response);

    Response _get_files_list(const Request &request) const;

    Response _save_file(const Request &request) const;

    Response _remove_file(const Request &request) const;

    Response _get_file(const Request &request) const;

    Response _handle_request(const Request &request) const;


};


#endif //SERVER_SERVER_H
