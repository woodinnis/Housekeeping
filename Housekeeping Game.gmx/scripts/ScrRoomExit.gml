/*
*   Perform basic operations moving from one room to another
*/

var NPC;

// Check for a player and an NPC in the current room and set the NPC variable
if(instance_exists(ObjPlayerParent) && instance_exists(ObjNPCParent))
    NPC = instance_nearest(ObjPlayerParent.x, ObjPlayerParent.y, ObjNPCParent);

    
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
        // If player is not touching an NPC move between rooms
        if(!NPC.touchingPlayer)
        {
            instance_create(0,0, ObjFade);
            
            if(doorEnter)
                destinationRoom = RoomMain;
                
            if(!ObjUI.elevatorTouched)
                ObjUI.elevatorTouched = true;
        }
        
        break;
    }
    case RoomMain:
    {
        // If player is not touching an NPC move between rooms
        if(!NPC.touchingPlayer)
        {
            instance_create(0,0, ObjFade);
            
            if(doorEnter)
                destinationRoom = RoomFrontDesk;
        }
        
        break;
    }
}
