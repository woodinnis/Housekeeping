// Perform basic operations moving from one room to another
switch(room)
{
    case RoomMenu:
    {
        room_goto(RoomFrontDesk);
        break;
    }
    case RoomFrontDesk:
    {
        room_goto(RoomHallway);
        break;
    }
    case RoomHallway:
    {
        // Go to the Front Desk
        if(place_meeting(x,y,ObjElevator))
        {
            room_goto(RoomFrontDesk);
        }
        // Enter a room
        else
        {   
            roomNumber = round(random(100));
            if(roomNumber mod 2 == 1)
            {
                room_goto(RoomRoomSm);
            }
            else
            {
                //room_goto(RoomRoomLg);
                room_goto(RoomRoomSm);
            }
        }
        break;
    }
    case RoomRoomSm:
    case RoomRoomLg:
        if(ObjOverlord.messNum <= 0)
        {
            room_goto(RoomHallway);
        }
        else
        {
            ObjOverlord.drawNotClean = true;
            x = x + 1;
        }
        break;
}