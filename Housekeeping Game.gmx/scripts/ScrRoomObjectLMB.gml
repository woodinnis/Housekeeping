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
                image_index = 0;
                ScrItemDrop(INVSHEETS, 1);
                cleanCount++;
                break;
            }
            else
                break;   
        }
        case "toilet":
        {
            if(ds_map_find_value(myInventory, INVBLEACH) > 0)
            {
                image_index = 0;
                ScrItemDrop(INVBLEACH, 1);
                cleanCount++;
                break;
            }
            else
                break;   
        }
        case "counter":
        {
            if(ds_map_find_value(myInventory, INVTOWELS) > 0)
            {
                image_index = 0;
                ScrItemDrop(INVTOWELS, 1);
                cleanCount++;
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

