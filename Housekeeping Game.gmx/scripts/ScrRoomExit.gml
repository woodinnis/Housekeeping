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
        if(doorEnter)
            room_goto(RoomMain);
        
        break;
    }
    case RoomMain:
    {
        if(doorEnter)
            room_goto(RoomFrontDesk)

        break;
    }
}

/*
    case RoomHallway:
    {
        // Go to the Front Desk
        if(place_meeting(x,y,ObjElevator))
        {
            room_goto(RoomFrontDesk);
        }
        // This used to contain the code for entering Large and Small
        // rooms. It could still be used to add a storage room, or
        // basement.
        
        break;
    }
    case RoomRoomSm:
    case RoomRoomLg:
//        if(ObjOverlord.messNum <= 0)
        {
            room_goto(RoomHallway);
        }
//        else
        {
            ObjOverlord.drawNotClean = true;
            x = x + 1;
        }
        break;
}


