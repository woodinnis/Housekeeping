/*
*   When player collides with an NPC, perform checks for mission dialogue
*/

var talkX = 0;
var talkY = 0;
var replyY = 0;

// Verify instance of NPCParent
if(instance_exists(ObjNPCParent))
{
    // Which NPC is being touched (show me on the dolly where the NPC touched you)
    NPC = instance_nearest(ObjPlayerParent.x,ObjPlayerParent.y, ObjNPCParent);
    
    show_debug_message(NPC.NPCName);
          
    // Is the player currently touching an NPC
    if(NPC.touchingPlayer)//position_meeting(ObjPlayerParent.x,ObjPlayerParent.y,NPC))
    {
        show_debug_message("george");
            
        // Set font, colour, alignment
        draw_set_font(fontMessages);
        draw_set_colour(c_white);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
    
        // Set x/y to follow the NPC
        talkX = (NPC.x / (room_width / view_wview[0]));
        talkY = (NPC.y / (room_height / view_hview[0]));
        replyY = talkY + 20;

        with(NPC)
        {
            // Actions to perform on subsequent encounters with each NPC
            switch(NPCName)
            {
                case NPC001:    // Woman in lobby
                {
                    m = missionList[| 0];
                    if(!m[? "Complete"])
                    {
                        if(m[? "Started"])
                        {
                            if(m[? "Key Object"])
                            {
                                draw_text(talkX,talkY,"Is that my necklace you have?");
                                draw_text(talkX, replyY, "Can I have it back? Y/N");
                            }
                            else
                                draw_text(talkX,talkY,"Have you found my necklace?");
                        }
                        else
                        {
                            draw_text(talkX,talkY,"My favourite necklace fell off somewhere in the hotel. Return it to me, and I'll see that you're rewarded.");
                        }
                    }
                    else
                        draw_text(talkX,talkY,"Thank you for finding my jewels");
                        
                    break;
                }
                case NPC002:    // Maintenance Guy
                {
                    m = missionList[| 0];
                    if(!m[? "Complete"] && m[? "Key Object"])
                    {
                        draw_text(talkX,talkY,"That's a nice necklace you have there. I'll take it off your hands for a few bucks.");
                        draw_text(talkX, replyY, "Can I buy it? Y/N");
                    }
                    else
                        draw_text(talkX,talkY,"Out of my Way!");
                        
                    break;
                }
                case NPC003:    // Laptop Guy
                {
                    m = missionList[| 1];
                    if(!m[? "Complete"])
                    {
                        if(m[? "Started"])
                        {
                            if(m[? "Key Object"])
                            {
                                draw_text(talkX,talkY,"Is that my laptop?!");
                                draw_text(talkX, replyY, "Please, give it to me! Y/N");
                            }
                            else 
                                draw_text(talkX,talkY,"I still haven't found my laptop.");
                        }
                        else
                        {
                            draw_text(talkX,talkY,"I think someone took my laptop out of my room. If you see it, could you tell me?");
                        }
                    }
                    else
                        draw_text(talkX,talkY,"Thank you for returning my laptop to me");
                        
                    break;
                }
                case NPC004:    // Hoodie Guy
                {
                    m = missionList[| 1];
                    if(!m[? "Complete"])
                    {
                        if(m[? "Started"])
                        {
                            if(m[? "Key Object"])
                            {
                                draw_text(talkX,talkY,"Would you be interested in selling that laptop?")
                                draw_text(talkX, replyY, "I'm offering a good price. Y/N");
                            }
                        }
                    }
                    break;   
                }
                case NPC006:    // Whistleblower
                {
                    m = missionList[| 2];
                    if(!m[? "Complete"])
                    {
                        if(m[? "Started"])
                        {
                            if(m[? "Key Object"])
                            {
                                draw_text(talkX,talkY,"Those look like my documents.");
                                draw_text(talkX, replyY, "Can I look at them? Y/N");
                            }
                            else 
                                draw_text(talkX,talkY,"Have you seen my documents?");
                        }
                        else
                        {
                            draw_text(talkX,talkY,"I've misplaced some documents in one of these rooms. Help me find them.");
                        }
                    }
                    else
                        draw_text(talkX,talkY,"These documents will help bring down a corporate evil.");
                        
                    break;
                }
                case NPC007:    // Man in Suit
                {
                    m = missionList[| 2];
                    if(!m[? "Complete"])
                    {
                        if(m[? "Started"])
                        {
                            if(m[? "Key Object"])
                            {
                                draw_text(talkX,talkY,"That looks like the portfolio I'm after.");
                                draw_text(talkX, replyY, "Will you hand it over? Y/N");
                            }
                            else 
                                draw_text(talkX,talkY,"Have you run into my suspect yet?");
                        }
                        else
                        {
                            draw_text(talkX,talkY,"I'm looking for a young man who's staying at this hotel. He's trying to steal corporate secrets");
                        }
                    }
                    else
                        draw_text(talkX,talkY,"I'm looking for a young co-worker of mine who's staying at this hotel.");
                        
                    break;
                }
                case NPC009:    // Old man in hallway
                {
                    m = missionList[| 4];
                    if(!m[? "Complete"])
                    {
                        if(m[? "Started"])
                        {
                            if(m[? "Key Object"])
                            {
                                draw_text(talkX,talkY,"That looks like the letter I'm looking for");
                                draw_text(talkX, replyY, "Is it? Y/N");
                            }
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
                case NPC010:    // Ad Person
                    break;
                default:
                    break;
            }
        }
    }
}
