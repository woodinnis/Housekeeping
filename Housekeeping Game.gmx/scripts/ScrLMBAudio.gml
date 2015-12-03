/*
*
*   Play sounds when player clicks on specific game objects
*
*/

var iAm;
var mouseX;
var mouseY;

mouseX = device_mouse_x(0);
mouseY = device_mouse_y(0)

// Ring a bell when the Clerk is clicked
if(position_meeting(mouseX, mouseY, ObjClerk))
{
    if(!position_meeting(mouseX, mouseY, ObjMissionItemParent))
    {
        audio_play_sound(SndClerk,5,false);
    }
}

// Play sounds for the objects being cleaned in rooms
if(position_meeting(mouseX, mouseY, ObjRoomParent))
{
    iAm = instance_position(mouseX, mouseY, ObjRoomParent);
    
    // Check the object index at the current mouse position
    // If the player is able to clean the object, play the correct sound    
    switch(iAm.object_index)
    {
        case ObjBed:
        {
            if(ds_map_find_value(myInventory, INVSHEETS) > 0)
                audio_play_sound(SndBed,5,false);
                
            break;
        }
        case ObjToilet:
        {
            if(ds_map_find_value(myInventory, INVBLEACH) > 0)
                audio_play_sound(SndToilet,5,false);
                
            break;
        }
        case ObjCounter:
        {
            if(ds_map_find_value(myInventory, INVTOWELS) > 0)
                audio_play_sound(SndSink,5,false);
                
            break;
        }
    }
}

// Play elevator door sound
if(position_meeting(mouseX, mouseY, ObjElevator))
{
    audio_play_sound(SndElevatorDoors,5,false);
}

// Play walking sound
if(room = RoomMain)
{
    if(!audio_is_playing(SndWalking))
    {
        if(ObjPlayerParent.goodPath)   
            audio_play_sound(SndWalking, 5, true);
    }
}
