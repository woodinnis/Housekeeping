/*
*   When player collides with an NPC, perform checks for mission dialogue
*/

with(other)
{
    // If the player has not yet met the NPC
    if(!NPCMet)
    {
        // Actions to perform on first encounter with each NPC
        switch(NPCName)
        {
            case NPC001:    // Old Man in the hallway
            {
                show_debug_message(missionList[| 0]);
                break;
            }
            case NPC002:    // Maintenance guy
            {
                show_debug_message("MAINTENANCE!");
                break;
            }
            default:
                break;
        }
        NPCMet = true;      // Set the NPC as having been met
    }
    // If the player has already met the NPC
    else
    {
        // Actions to perform on subsequent encounters with each NPC
        switch(NPCName)
        {
            case NPC001:    // Old man in hallway
            {
                if(!is_undefined(ds_map_find_value(myInventory, INVLETTER)))
                    if(ds_map_find_value(myInventory, INVLETTER) == LET3)
                        show_debug_message("You Found it!");
                break;
            }
            case NPC002:    // Maintenance Guy
            {
                show_debug_message("Out of my Way!");
                break;
            }
            default:
                break;
        }
        NPCMet = true;
    }
}
