// Play voice sound
if(place_meeting(ObjPlayerParent.x, ObjPlayerParent.y, ObjNPCParent))
{
    NPC = instance_nearest(ObjPlayerParent.x, ObjPlayerParent.y, ObjNPCParent);
    
    show_debug_message(NPC.object_index);
    
    switch(NPC.object_index)
    {
        case ObjNPCLobbyWoman:
        {
            audio_play_sound(SndFemaleVoice,5,false);
            break;
        }
    }
}
