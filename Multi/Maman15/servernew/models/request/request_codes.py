from enum import Enum


class RequestCode(Enum):
    DEFAULT = 824
    SIGNUP = 825
    PUBLIC_KEY = 826
    LOGIN = 827
    SEND_FILE = 828
    CRC_VALID = 900
    CRC_NOT_VALID = 901
    CRC_NOT_VALID_END = 902
