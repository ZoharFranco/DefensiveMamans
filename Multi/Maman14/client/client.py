import json
import os
import socket
from pathlib import Path

from models.request import Request
from models.response import Response


class Client:
    """
    Client class
    handle all client connection with the server
    """

    @staticmethod
    def __generate_connection_salt():
        return os.urandom(4)

    @staticmethod
    def __get_server_info(server_info_path: str):
        with open(server_info_path, 'r') as file:
            return file.readline().split(':')

    @staticmethod
    def __get_backup_files(backup_files_info_path: str):
        with open(backup_files_info_path, 'r') as file:
            return [line.strip() for line in file.readlines()]

    def __init__(self, server_info_path: str, backup_files_info_path: str):
        self.salt = self.__generate_connection_salt()
        self.ip, self.port = self.__get_server_info(server_info_path)
        self.files = self.__get_backup_files(backup_files_info_path)
        self.connection = (self.ip, int(self.port))

    def get_files_list(self):
        request = Request(file_name="aoeu")
        return self.send_request(request=request)

    def save_file(self, file_path: str):
        file_path_object = Path(file_path)
        request = Request(file_name=file_path_object.name, size=file_path_object.stat().st_size)
        return self.send_request(request=request)

    def delete_file(self, file_path: str):
        file_path_object = Path(file_path)
        request = Request(file_name=file_path_object.name)
        return self.send_request(request=request)

    def get_file(self, file_path: str, is_to_save_locally: bool):
        file_path_object = Path(file_path)
        request = Request(file_name=file_path_object.name)
        response = self.send_request(request=request)

        if is_to_save_locally:
            with open(response.file_name, 'wb') as file:
                file.write(response.payload)

        return response

    def send_request(self, request: Request) -> Response:
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
            s.connect(self.connection)
            s.sendall(bytes(request.model_dump_json(), encoding="utf-8"))
            response = s.recv(1024)
            print(json.loads(response))

        return Response(**json.loads(response))
