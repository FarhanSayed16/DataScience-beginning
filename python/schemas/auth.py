from pydantic import BaseModel

class Token(BaseModel):
    access_token: str
    refresh_token: str
    token_type: str = "bearer"

class LoginRequest(BaseModel):
    username: str
    password: str

class RegisterRequest(BaseModel):
    full_name: str
    phone_number: str
    password: str
