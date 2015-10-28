// Only change properties if object is within line-of-sight
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
                break;
            }
            else
                break;   
        }
        case "chair":
        {
            image_index = 0;
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

