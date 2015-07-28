if(levelOver)
{
    if(room != RoomHallway)
    {
        // Kick player into the hallway, and reset variables
        room_goto(RoomHallway);
        levelOver = false;
        ObjOverlord.enteredRoom = false;
    }   
}
