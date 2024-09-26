import os

from crypto.Cipher import AES, PKCS1_OAEP


def generate_aes_key(length: int) -> bytes:
    secret_key = os.urandom(length)
    return secret_key


def encrypt_aes_data(data: bytes, secret_key: bytes):
    cipher = AES.new(secret_key, mode=AES.MODE_CBC)
    encrypted_data = cipher.encrypt(data)
    return encrypted_data


def decrypt_aes_data(encrypted_data: bytes, secret_key: bytes):
    cipher = AES.new(secret_key, mode=AES.MODE_CBC)
    decrypted_data = cipher.decrypt(encrypted_data)
    return decrypted_data


def encrypt_rsa_data(data: bytes, public_key: bytes):
    cipher_rsa = PKCS1_OAEP.new(public_key)
    encrypted_data = cipher_rsa.encrypt(data)
    return encrypted_data


def decrypt_rsa_data(encrypted_data: bytes, public_key: bytes):
    cipher_rsa = PKCS1_OAEP.new(public_key)
    decrypted_data = cipher_rsa.decrypt(encrypted_data)
    return decrypted_data
