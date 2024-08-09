//
// Created by HPC on 06/08/2024.
//

#ifndef SERVER_SERVER_H
#define SERVER_SERVER_H

#define CONNECTION_BUFFER_SIZE 2048


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

    int run();

    Server(std::string port, const std::string &backup_path) : port(std::move(port)), backup_path(backup_path) {}

    void run_client(SOCKET client_socket);


private:
    std::string port;
    std::string backup_path;

    Response _get_files_list(const Request &request) const;

    Response _save_file(const Request &request) const;

    Response _remove_file(const Request &request) const;

    Response _get_file(const Request &request) const;

    Response _send_response(const Response &response) const;

    Response _handle_request(const Request &request) const;


};


#endif //SERVER_SERVER_H
