// Perform basic operations moving from one room to another


switch(room)
{
    case RoomMenu:
    {
        instance_create(0,0, ObjFade);
        destinationRoom = RoomFrontDesk;
        break;
    }
    case RoomFrontDesk:
    {
        instance_create(0,0, ObjFade);
        
        if(doorEnter)
            destinationRoom = RoomMain;
            
        if(!ObjUI.elevatorTouched)
            ObjUI.elevatorTouched = true;
        
        break;
    }
    case RoomMain:
    {
        instance_create(0,0, ObjFade);
        
        if(doorEnter)
            destinationRoom = RoomFrontDesk;

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


