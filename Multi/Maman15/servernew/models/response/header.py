from pydantic import BaseModel

from models.request.request_codes import RequestCode


class RequestHeader(BaseModel):
    pass


class GenericHeader(BaseModel):
    client_id: int = 0
    version: int = 0
    code: RequestCode = RequestCode.DEFAULT
    payload_size: int = 0


HEADERS = (RequestHeader, GenericHeader)
