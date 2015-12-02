/*
*
*   Play sounds when player clicks on specific game objects
*
*/

var iAm;

// Ring a bell when the Clerk is clicked
if(position_meeting(mouse_x, mouse_y, ObjClerk))
{
    if(!position_meeting(mouse_x, mouse_y, ObjMissionItemParent))
    {
        audio_play_sound(SndClerk,5,false);
    }
}

// Play sounds for the objects being cleaned in rooms
if(position_meeting(mouse_x, mouse_y, ObjRoomParent))
{
    iAm = instance_position(mouse_x, mouse_y, ObjRoomParent);
    
    show_debug_message(iAm.object_index);
    
    switch(iAm.object_index)
    {
        case ObjBed:
        {
            audio_play_sound(SndBed,5,false);
            break;
        }
        case ObjToilet:
        {
            audio_play_sound(SndToilet,5,false);
            break;
        }
        case ObjCounter:
        {
            audio_play_sound(SndSink,5,false);
            break;
        }
    }
}

// Play elevator door sound
if(position_meeting(mouse_x, mouse_y, ObjElevator))
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
