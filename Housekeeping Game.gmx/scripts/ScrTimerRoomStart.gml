// Start timer
if(room != RoomHallway)
{
    if(!ObjOverlord.enteredRoom)
    {
        ObjOverlord.enteredRoom = true;
        alarm[0] = levelTime * room_speed;
    }
}
else
{
    levelTime = currentLevel;
}