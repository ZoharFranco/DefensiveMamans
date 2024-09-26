from dal.adapters.sqlite_adapter import SqliteAdapter


class UsersDb(SqliteAdapter):
    def __init__(self):
        super().__init__()

    def get_user(self):
        pass
