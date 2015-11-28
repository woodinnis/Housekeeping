/*
*   Perform basic operations moving from one room to another
*/

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

