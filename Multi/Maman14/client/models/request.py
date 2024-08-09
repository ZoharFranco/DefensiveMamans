from enum import Enum

from pydantic import BaseModel


class RequestTypes(Enum):
    DEFAULT = 111
    SAVE_TO_BACKUP = 100
    GET_FROM_BACKUP = 200
    REMOVE_FROM_BACKUP = 201
    GET_ALL_FILES_LIST = 202


class Request(BaseModel):
    user_id: str = ''
    version: str = ''
    type: RequestTypes = RequestTypes.DEFAULT
    name_len: int = 0
    file_name: str = ''
    size: int = 0
    payload: bytes = bytes()
