/*
*   Perform basic operations moving from one room to another
*/

var NPC;
var door;

// Check for a player and an NPC in the current room and set the NPC variable
if(instance_exists(ObjPlayerParent) && instance_exists(ObjNPCParent))
    NPC = instance_nearest(ObjPlayerParent.x, ObjPlayerParent.y, ObjNPCParent);

// Check for a door in the current room, and set the door variable
if(instance_exists(ObjDoorParent))
    door = ObjDoorParent;

// Stop the walking sound
if(audio_is_playing(SndWalking))
    audio_stop_sound(SndWalking);
    
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
            if(door.doorEnter)
            {
                instance_create(0,0, ObjFade);
                
                destinationRoom = RoomMain;
                    
                if(!ObjUI.elevatorTouched)
                    ObjUI.elevatorTouched = true;
            }
        }
        
        break;
    }
    case RoomMain:
    {
        // If a shift has just ended, move to the Front Desk
        if(!shiftStart)
        {
            if(door.doorEnter)
            {
                instance_create(0,0, ObjFade);
                
                destinationRoom = RoomFrontDesk;
            }
        }
        // If player is not touching an NPC move between rooms
        else if(!NPC.touchingPlayer)
        {
            if(door.doorEnter)
            {
                instance_create(0,0, ObjFade);
                
                destinationRoom = RoomFrontDesk;
            }
        }
        break;
    }
    default:
        break;
}
