from pydantic import BaseModel
from typing import Optional
from datetime import datetime

class UserCreate(BaseModel):
    full_name: str
    phone_number: str
    password: str

class UserOut(BaseModel):
    id: int
    full_name: str
    phone_number: str
    role: str
    trust_score: Optional[float] = 100.0
    created_at: datetime

class UserUpdate(BaseModel):
    full_name: Optional[str] = None
    phone_number: Optional[str] = None
    # Add other editable fields here as needed (email, location, etc.)