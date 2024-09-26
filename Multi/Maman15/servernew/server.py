import random
import socket

from consts import ConnectionConsts
from dal.instances.users_sqlite_adapter import UsersDb
from models.request.request import Request
from models.request.request_codes import RequestCode

from utils.logger import log_function_call


class Server:
    """
    Server class
    handle all server connection with the clients
    """

    @staticmethod
    def _send_rsa_data():
        return random.randint(0, 2 ** 32 - 1)

    @staticmethod
    def _send_aes_data(server_info_path: str):
        with open(server_info_path, 'r') as file:
            return file.readline().split(':')

    def __init__(self, users_db: UsersDb):
        self.users_db = users_db
        self.port = ConnectionConsts.PORT
        self.connection = (self.ip, int(self.port))
        self.socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.socket.connect(self.connection)

    def signup(self):
        pass

    def login(self):
        pass

    @log_function_call
    def get_files_list(self, is_to_save_as_file: bool):
        request = Request(type=RequestCode.DEFAULT, user_id=self.user_id, version=self.version)
        response = self.send_request(request=request)
        if is_to_save_as_file:
            with open(response.file_name, 'wb') as file:
                file.write(bytes(response.payload))
        return response
