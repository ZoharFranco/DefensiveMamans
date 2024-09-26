def validate_string_max_bytes(field_name: str, value: str, max_size: int) -> str:
    value_bytes = value.encode('utf-8')
    if max_size and len(value_bytes) > max_size:
        raise ValueError(f"Field '{field_name}' exceeds max size of {max_size} bytes.")
    return value


def validate_int_max_bytes(field_name: str, value: int, max_size: int) -> int:
    if max_size and value > 2 ** (8 * max_size):
        raise ValueError(f"Field '{field_name}' exceeds max size of {max_size} bytes.")
    return value
