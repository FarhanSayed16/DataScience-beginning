from pydantic import BaseModel

class NotificationOut(BaseModel):
    id: int
    user_id: int
    type: str
    message: str
    read: bool
