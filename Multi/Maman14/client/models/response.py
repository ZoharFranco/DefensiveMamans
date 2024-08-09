from enum import Enum
from typing import List

from pydantic import BaseModel


class ResponseTypes(Enum):
    DEFAULT = 111
    GET_FROM_BACKUP_SUCCESS = 210
    GET_ALL_FILES_LIST_SUCCESS = 211
    REMOVE_OR_SAVE_TO_BACKUP_SUCCESS = 212
    FILE_NOT_EXIST = 1001
    NO_FILES_EXIST = 1002
    INTERNAL_ERROR = 1003


class Response(BaseModel):
    version: str = ''
    status: ResponseTypes = ResponseTypes.DEFAULT
    name_len: int = 0
    file_name: str = ''
    size: int = 0
    payload: List = None
