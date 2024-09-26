from typing import ClassVar

from pydantic import BaseModel, field_validator

from models.request.request_codes import RequestCode
from models.utils.validations import validate_string_max_bytes


class RequestPayload(BaseModel):
    pass


class SignUpPayload(BaseModel):
    pass


class PublicKeyPayload(BaseModel):
    pass


class LoginPayload(BaseModel):
    pass


class SendFilePayload(BaseModel):
    file_name: str

    MAX_BYTES: ClassVar[dict[str, int]] = {
        "file_name": 16
    }

    @field_validator("file_name", mode='before')
    def validate_string_size(cls, value: str, info) -> str:
        field_name = info.field_name
        max_size = cls.MAX_BYTES.get(field_name)
        return validate_string_max_bytes(field_name, value, max_size)


class CRCPayload(BaseModel):
    pass


REQUEST_CODE_PAYLOAD_MAPPER = {
    RequestCode.DEFAULT: RequestPayload,
    RequestCode.SIGNUP: SignUpPayload,
    RequestCode.PUBLIC_KEY: PublicKeyPayload,
    RequestCode.LOGIN: LoginPayload,
    RequestCode.SEND_FILE: SendFilePayload,
    RequestCode.CRC_VALID: CRCPayload,
    RequestCode.CRC_NOT_VALID: CRCPayload,
    RequestCode.CRC_NOT_VALID_END: CRCPayload,
}

PAYLOADS = tuple(REQUEST_CODE_PAYLOAD_MAPPER.values())
