if(room = RoomMenu)     // If the player is in the main menu
    room_goto(RoomHallway)
else                    // If the player is in the game
{
    if(ObjOverlord.messNum <= 0)
    {
        room_goto(RoomHallway);
    }
    else
    {
        ObjOverlord.drawNotClean = true;
        x = x + 1;
    }
}
