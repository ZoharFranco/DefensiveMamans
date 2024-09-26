import os


class EncryptionConsts:
    class RSA:
        KEY_LENGTH = os.getenv('RSA.KEY_LENGTH')

    class AES:
        KEY_LENGTH = os.getenv('AES.KEY_LENGTH')


class ConnectionConsts:
    PORT = os.getenv('PORT')
