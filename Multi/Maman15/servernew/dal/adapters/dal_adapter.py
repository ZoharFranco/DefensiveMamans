from abc import ABC, abstractmethod


class DalAdapter(ABC):
    def __init__(self):
        pass

    @abstractmethod
    def connect(self):
        pass
