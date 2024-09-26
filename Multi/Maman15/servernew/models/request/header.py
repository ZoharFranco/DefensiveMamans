from typing import ClassVar

from pydantic import BaseModel, field_validator, Field

from models.request.request_codes import RequestCode
from models.utils.validations import validate_int_max_bytes


class RequestHeader(BaseModel):
    pass


class GenericHeader(BaseModel):
    client_id: int = Field(0)
    version: int = Field(0)
    code: RequestCode = RequestCode.DEFAULT
    payload_size: int = Field(0)

    MAX_BYTES: ClassVar[dict[str, int]] = {
        "client_id": 16,
        "version": 1,
        "code": 2,
        "payload_size": 4
    }

    @field_validator("client_id", "version", "code", "payload_size", mode='before')
    def validate_int_max_bytes(cls, value: int, info) -> int:
        field_name = info.field_name
        max_size = cls.MAX_BYTES.get(field_name)
        return validate_int_max_bytes(field_name, value, max_size)

    def to_binary(self) -> bytes:
        json_str = self.model_dump_json()
        return json_str.encode('utf-8')


HEADERS = (RequestHeader, GenericHeader)
