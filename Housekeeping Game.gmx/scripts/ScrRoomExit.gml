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
        //room_goto(RoomHallway);
        room_goto(RoomMain);
        break;
    }
    case RoomMain:
    {
        room_goto(RoomFrontDesk)
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
            // Enter room if door is available
            if(enterDoor)
            {
                roomNumber = round(random(100));
                if(roomNumber mod 2 == 1)
                {
                    room_goto(RoomRoomSm);
                    //room_goto(RoomRoomLg);
                }
                else
                {
                    room_goto(RoomRoomLg);
                    //room_goto(RoomRoomSm);
                }
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

// Turn off any full screen displays that may still be visible
if(room != RoomMenu)
{   
    ObjOverlord.drawShirt = false;
    ObjOverlord.drawDocs = false;
    ObjOverlord.drawNote = false;
}
