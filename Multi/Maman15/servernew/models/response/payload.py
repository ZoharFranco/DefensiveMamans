from pydantic import BaseModel

from models.request.request_codes import RequestCode


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
