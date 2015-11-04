//drawNPCDialogue = true;

/*
*   When player collides with an NPC, perform checks for mission dialogue
*

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
                m = missionList[| 0];
                if(m[? "Key Object"])
                    show_debug_message("That looks like the letter I'm looking for");
                else
                    show_debug_message("I'm looking for a letter from my wife.");
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
                m = missionList[| 0];
                if(!m[? "Complete"])
                {
                    if(m[? "Started"])
                    {
                        if(m[? "Key Object"])
                            show_debug_message("That looks like the letter I'm looking for");
                        else 
                            show_debug_message("I'm still looking for my letter. Have you seen it?");
                    }
                }
                else
                    show_debug_message("Thank you for finding my letter");
                    
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
    }
}
