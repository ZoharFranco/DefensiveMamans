from client import Client
from models.response import Response

SERVER_INFO_PATH = 'server.info'
BACKUP_FILES_INFO_PATH = 'backup.info'
VERSION = 1

if __name__ == '__main__':

    # Create client
    client = Client(server_info_path=SERVER_INFO_PATH, backup_files_info_path=BACKUP_FILES_INFO_PATH, version=VERSION)

    # Save backup files
    files_to_backup = client.files
    for file in files_to_backup:
        client.save_file(file_path=file)

    # Show current backup files
    client.get_files_list(is_to_save_as_file=True)

    # Get, Delete file
    first_file = files_to_backup[0]

    client.get_file(file_path=first_file, is_to_save_locally=True)
    client.delete_file(file_path=first_file)
    client.get_file(file_path=first_file, is_to_save_locally=True)
    client.get_files_list(is_to_save_as_file=True)
