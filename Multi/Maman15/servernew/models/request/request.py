from typing import Union

from pydantic import BaseModel

from models.request.header import HEADERS
from models.request.payload import PAYLOADS


class Request(BaseModel):
    header: Union[HEADERS]
    payload: Union[PAYLOADS]
