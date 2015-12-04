#define ScrRoomObjectLMB
/* 
*   Check to see if a clicked object is withing line-of-sight
*   
*   If true, change its properties to show it as cleaned, and increment cleanCount
*/
show_debug_message(name)


if(!collision_line(x, y,ObjPlayerRoom.x,ObjPlayerRoom.y,ObjBarrier, false,true))
{
    switch(name)
    {
        case "bed":
        {
            if(ds_map_find_value(myInventory, INVSHEETS) > 0)
            {
                if(image_index == 1)
                {
                    roomSound();
                    image_index = 0;
                    ScrItemDrop(INVSHEETS, 1);
                    cleanCount++;
                }
                break;
            }
            else
                break;   
        }
        case "toilet":
        {
            if(ds_map_find_value(myInventory, INVBLEACH) > 0)
            {
                if(image_index == 1)
                {
                    roomSound();
                    image_index = 0;
                    ScrItemDrop(INVBLEACH, 1);
                    cleanCount++;
                }
                break;
            }
            else
                break;   
        }
        case "counter":
        {
            if(ds_map_find_value(myInventory, INVTOWELS) > 0)
            {
                if(image_index == 1)
                {
                    roomSound();
                    image_index = 0;
                    ScrItemDrop(INVTOWELS, 1);
                    cleanCount++;
                }
                break;
            }
            else
                break;   
        }
        case "chair":
        {
            if(image_index == 1)
            {
                image_index = 0;
                cleanCount++;
            }
            break;
        }
        default:
            break;
    }
}
/*
        // Set the object to clean
    image_index = 0;
    
    // Place evidence
    evidenceGet = irandom(EVIDENCERANDOM);
    if((evidenceGet mod 5) == 0)
        ScrEvidencePlace();


#define roomSound
// Play sounds for the objects being cleaned in rooms
var iAm;
var mouseX;
var mouseY;

mouseX = device_mouse_x(0);
mouseY = device_mouse_y(0)

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