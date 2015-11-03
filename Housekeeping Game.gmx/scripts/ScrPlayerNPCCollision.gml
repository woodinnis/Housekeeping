/*
*   When player collides with an NPC, perform checks for mission dialogue
*/

with(other)
{
    if(!NPCMet)
    {
        switch(NPCName)
        {
            case NPC001:
            {
                show_debug_message("I'm Old!");
                break;
            }
            case NPC002:
            {
                show_debug_message("MAINTENANCE!");
                break;
            }
            default:
                break;
        }
        NPCMet = true;
    }
    else
    {
        switch(NPCName)
        {
            case NPC001:
            {
                show_debug_message("Stop That!");
                break;
            }
            case NPC002:
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
