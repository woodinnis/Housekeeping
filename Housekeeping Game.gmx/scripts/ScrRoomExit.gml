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
        show_message("You have not finished cleaning this room")
        with(other)
            x = x + 5;
    }
}
