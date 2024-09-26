import datetime
import json
import os
import random
import socket
from pathlib import Path

from models.request import Request, RequestTypes
from models.response import Response
from utils.logger import log_function_call


class Client:
    """
    Client class
    handle all client connection with the server
    """

    @staticmethod
    def __generate_connection_salt():
        return random.randint(0, 2 ** 32 - 1)

    @staticmethod
    def __get_server_info(server_info_path: str):
        with open(server_info_path, 'r') as file:
            return file.readline().split(':')

    @staticmethod
    def __get_backup_files(backup_files_info_path: str):
        with open(backup_files_info_path, 'r') as file:
            return [line.strip() for line in file.readlines()]

    def __init__(self, server_info_path: str, backup_files_info_path: str, version: int):
        self.version = version
        self.user_id = self.__generate_connection_salt()
        self.ip, self.port = self.__get_server_info(server_info_path)
        self.files = self.__get_backup_files(backup_files_info_path)
        self.connection = (self.ip, int(self.port))
        self.socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.socket.connect(self.connection)

    @log_function_call
    def get_files_list(self, is_to_save_as_file: bool) -> Response:
        request = Request(type=RequestTypes.GET_ALL_FILES_LIST, user_id=self.user_id, version=self.version)
        response = self.send_request(request=request)
        if is_to_save_as_file:
            with open(response.file_name, 'wb') as file:
                file.write(bytes(response.payload))
        return response

    @log_function_call
    def save_file(self, file_path: str) -> Response:
        file_path_object = Path(file_path)
        with open(file_path, 'rb') as file:
            payload = file.read()

        request = Request(version=self.version, type=RequestTypes.SAVE_TO_BACKUP, file_name=file_path_object.name,
                          size=file_path_object.stat().st_size, user_id=self.user_id, payload=payload,
                          name_len=len(file_path_object.name))
        return self.send_request(request=request)

    @log_function_call
    def delete_file(self, file_path: str) -> Response:
        file_path_object = Path(file_path)
        request = Request(version=self.version, type=RequestTypes.REMOVE_FROM_BACKUP, file_name=file_path_object.name,
                          user_id=self.user_id)
        return self.send_request(request=request)

    @log_function_call
    def get_file(self, file_path: str, is_to_save_locally: bool) -> Response:
        file_path_object = Path(file_path)
        request = Request(version=self.version, type=RequestTypes.GET_FROM_BACKUP, file_name=file_path_object.name,
                          user_id=self.user_id)
        response = self.send_request(request=request)

        if response.payload and is_to_save_locally:
            with open(response.file_name, 'wb') as file:
                file.write(bytes(response.payload))

        return response

    def send_request(self, request: Request) -> Response:
        self.socket.sendall(bytes(request.model_dump_json(), encoding="utf-8"))
        response = self.socket.recv(4096)
        return Response(**json.loads(response))
