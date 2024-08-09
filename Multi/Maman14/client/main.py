from client import Client
from models.response import Response

SERVER_INFO_PATH = 'server.info'
BACKUP_FILES_INFO_PATH = 'backup.info'

if __name__ == '__main__':

    # Create client
    client = Client(SERVER_INFO_PATH, BACKUP_FILES_INFO_PATH)

    # Save backup files
    files_to_backup = client.files
    for file in files_to_backup:
        save_response = client.save_file(file_path=file)
        print(save_response)

    # Show current backup files
    print(client.get_files_list())

    # Get, Delete file
    first_file = files_to_backup[0]
    print(client.get_file(file_path=first_file, is_to_save_locally=True))
    print(client.delete_file(file_path=first_file))
    print(client.get_file(file_path=first_file, is_to_save_locally=True))
