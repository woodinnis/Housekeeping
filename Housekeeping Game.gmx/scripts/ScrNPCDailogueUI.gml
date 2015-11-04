/*
*   When player collides with an NPC, perform checks for mission dialogue
*/

var talkX = 0;
var talkY = 0;

if(instance_exists(ObjNPCParent))
{
    // Is the player currently touching an NPC
    if(position_meeting(ObjNPCParent.x,ObjNPCParent.y,ObjPlayerParent))
    {
        // Which NPC is being touched (show me on the dolly where the NPC touched you)
        NPC = instance_position(ObjNPCParent.x,ObjNPCParent.y, ObjNPCParent);
        
        // Set font, colour, alignment
        draw_set_font(fontMessages);
        draw_set_colour(c_white);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
    
        // Set x/y to follow the NPC
        talkX = (ObjNPCParent.x / room_width) * view_wview[0];
        talkY = (ObjNPCParent.y / room_height) * view_hview[0]; 
        
        with(NPC)
        {
            /* If the player has not yet met the NPC
            if(!NPCMet)
            {
                // Actions to perform on first encounter with each NPC
                switch(NPCName)
                {
                    case NPC001:    // Old Man in the hallway
                    {
                        m = missionList[| 0];
                        if(m[? "Key Object"])
                            draw_text(talkX,talkY,"That looks like the letter I'm looking for");
                        else
                            draw_text(talkX,talkY,"I'm looking for a letter from my wife.");
                        break;
                    }
                    case NPC002:    // Maintenance guy
                    {
                        draw_text(talkX,talkY,"MAINTENANCE!");
                        break;
                    }
                    default:
                        break;
                }
                //NPCMet = true;      // Set the NPC as having been met
            }
            // If the player has already met the NPC
            else
            {
                / Actions to perform on subsequent encounters with each NPC*/
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
                                    draw_text(talkX,talkY,"That looks like the letter I'm looking for");
                                else 
                                    draw_text(talkX,talkY,"I'm still looking for my letter. Have you seen it?");
                            }
                            else
                            {
                                draw_text(talkX,talkY,"I'm looking for a letter from my wife.");
                            }
                        }
                        else
                            draw_text(talkX,talkY,"Thank you for finding my letter");
                            
                        break;
                    }
                    case NPC002:    // Maintenance Guy
                    {
                        draw_text(talkX,talkY,"Out of my Way!");
                        break;
                    }
                    default:
                        break;
                }
            }
        }
    }

