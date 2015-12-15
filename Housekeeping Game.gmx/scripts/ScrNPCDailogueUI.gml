#define ScrNPCDailogueUI
/*
*   When player collides with an NPC, perform checks for mission dialogue
*/

var talkX = 0;
var talkY = 0;
var replyY = 0;

var NPC;

btnYes = false;
btnNo = false;

// Verify instance of NPCParent
if(instance_exists(ObjNPCParent))
{
    // Which NPC is being touched (show me on the dolly where the NPC touched you)
    NPC = instance_nearest(ObjPlayerParent.x,ObjPlayerParent.y, ObjNPCParent);
          
    // Is the player currently touching an NPC
    if(NPC.touchingPlayer && ObjOverlord.introRead)//position_meeting(ObjPlayerParent.x,ObjPlayerParent.y,NPC))
    {       
        // Set font, colour, alignment
        drawRect()
        alignUI();
        draw_set_valign(fa_top);
    
        talkX = centerX;
        talkY = topThird//drawRectY + TXTDRAWBUFFER;
        replyY = talkY + TXTDRAWBUFFER;
        
        NPCName = NPC.NPCName;
        
        // Actions to perform on subsequent encounters with each NPC
        switch(NPCName)
        {
            case NPC001:    // Woman in lobby
            {
                m = missionList[| 0];
                NPC001Dia(m, talkX, talkY, replyY);
                if(!audio_is_playing(SndFemaleVoice))
                    audio_play_sound(SndFemaleVoice, 5, false);

                break;
            }
            case NPC002:    // Maintenance Guy
            {
                m = missionList[| 0];
                NPC002Dia(m, talkX, talkY, replyY);
                if(!audio_is_playing(SndMaleVoice))
                    audio_play_sound(SndMaleVoice, 5, false);

                break;
            }
            case NPC003:    // Laptop Guy
            {
                m = missionList[| 1];
                NPC003Dia(m, talkX, talkY, replyY);
                if(!audio_is_playing(SndMaleVoice))
                    audio_play_sound(SndMaleVoice, 5, false);
                    
                break;
            }
            case NPC004:    // Hoodie Guy
            {
                m = missionList[| 1];
                NPC004Dia(m, talkX, talkY, replyY);
                
                break;   
            }
            case NPC006:    // Whistleblower
            {
                m = missionList[| 2];
                NPC006Dia(m, talkX, talkY, replyY);
                if(!audio_is_playing(SndMaleVoice))
                    audio_play_sound(SndMaleVoice, 5, false);
                
                break;
            }
            case NPC007:    // Man in Suit
            {
                m = missionList[| 2];
                NPC007Dia(m, talkX, talkY, replyY);
                if(!audio_is_playing(SndMaleVoice))
                    audio_play_sound(SndMaleVoice, 5, false);
                
                break;
            }
            case NPC009:    // Old man in hallway
            {
                m = missionList[| 4];
                NPC009Dia(m, talkX, talkY, replyY);
                if(!audio_is_playing(SndMaleVoice))
                    audio_play_sound(SndMaleVoice, 5, false);
                
                break;
            }
            case NPC010:    // Ad Person
                break;
            default:
                break;
        }   // Switch(NPCName)
    }   // if(NPC.touchingPlayer
    else
    {
        // Stop playing any voices
        if(audio_is_playing(SndFemaleVoice))
            audio_stop_sound(SndFemaleVoice);
        if(audio_is_playing(SndMaleVoice))
            audio_stop_sound(SndMaleVoice);
    }
}

#define NPC001Dia
///NPC001Dia(Mission Entry, x, y1, y2)

m = argument0;
talkX = argument1;
talkY = argument2;
replyY = argument3;

draw_sprite(SprNPCWomanHead,0,centerX - 210, centerY + 80);

if(!m[? "Complete"])
{
    if(m[? "Started"])
    {
        if(m[? "Key Object"])
        {
            if(m[? "Name"] == REFUSE)
                draw_text(talkX,talkY,"My husband bought me that necklace!");
            else
            {
                draw_text(talkX,talkY,"Is that my necklace you have?#Can I have it back? Y/N");
                //draw_text(talkX, replyY, "Can I have it back? Y/N");
                buttons(talkX,replyY);
            }
        }
        else
            draw_text(talkX,talkY,"Have you found my necklace?");
    }
    else
    {
        draw_text(talkX,talkY,"My favourite necklace fell off#somewhere in the hotel.#Return it to me, and#I'll see that you're rewarded.");
    }
}
else if(m[? "Name"] == NPCName)
    draw_text(talkX,talkY,"Thank you for finding my jewels");
else
    draw_text(talkX,talkY,"Have you found my necklace?");

#define NPC002Dia
///NPC002Dia(Mission Entry, x, y1, y2)

m = argument0;
talkX = argument1;
talkY = argument2;
replyY = argument3;

draw_sprite(SprNPCMaintenanceGuy,0,centerX - 210, centerY + 80);

if(!m[? "Complete"] && m[? "Key Object"])
{
    if(m[? "Name"] == REFUSE)
        draw_text(talkX, talkY, "Fine! It's an ugly necklace anyway!");
    else
    {
        draw_text(talkX,talkY,"That's a nice necklace you have there.#Would you sell it for a few bucks?");
//        draw_text(talkX, replyY, "Can I buy it? Y/N");
        buttons(talkX,replyY);
    }
}
else
    draw_text(talkX,talkY,"Out of my Way!");

#define NPC003Dia
///NPC003Dia(Mission Entry, x, y1, y2)

m = argument0;
talkX = argument1;
talkY = argument2;
replyY = argument3;

draw_sprite(SprNPCLaptopGuy,0,centerX - 210, centerY + 80);

if(!m[? "Complete"])
{
    if(m[? "Started"])
    {
        if(m[? "Key Object"])
        {
            if(m[? "Name"] == REFUSE)
                draw_text(talkX, talkY, "It's critical that you return it#to me!");
            else
            {
                draw_text(talkX,talkY,"Is that my laptop?!#Please, give it to me!");
//                draw_text(talkX, replyY, "Please, give it to me! Y/N");
                buttons(talkX,replyY);
            }
        }
        else 
            draw_text(talkX,talkY,"I still haven't found my laptop.");
    }
    else
    {
        draw_text(talkX,talkY,"I think someone took my laptop#out of my room.#If you see it, could you#tell me?");
    }
}
else if(m[? "Name"] == NPCName)
    draw_text(talkX,talkY,"Thank you for returning my laptop#to me");
else 
    draw_text(talkX,talkY,"I still haven't found my laptop.");

#define NPC004Dia
///NPC004Dia(Mission Entry, x, y1, y2)

m = argument0;
talkX = argument1;
talkY = argument2;
replyY = argument3;

if(!m[? "Complete"])
{
    if(m[? "Started"])
    {
        if(m[? "Key Object"])
        {
            if(m[? "Name"] == REFUSE)
                draw_text(talkX,talkY,"I really suggest you reconsider");
            else
            {
                draw_text(talkX,talkY,"Would you be interested in selling#that laptop?#I'm offering a good price.")
//                draw_text(talkX, replyY, "I'm offering a good price. Y/N");
                buttons(talkX,replyY);
            }
        }
    }
}
else
    draw_text(talkX, talkY, "...");

#define NPC006Dia
///NPC006Dia(Mission Entry, x, y1, y2)

m = argument0;
talkX = argument1;
talkY = argument2;
replyY = argument3;

draw_sprite(SprNPCWhistleblower,0,centerX - 210, centerY + 80);

if(!m[? "Complete"])
{
    if(m[? "Started"])
    {
        if(m[? "Key Object"])
        {
            if(m[? "Name"] == REFUSE)
                draw_text(talkX, talkY, "The consequences are on you then!");
            else
            {
                draw_text(talkX,talkY,"Those look like my documents.#Can I look at them?");
//                draw_text(talkX, replyY, "Can I look at them? Y/N");
                buttons(talkX,replyY);
            }
        }
        else 
            draw_text(talkX,talkY,"Have you seen my documents?");
    }
    else
    {
        draw_text(talkX,talkY,"I've misplaced some documents in#one of these rooms.#Help me find them.");
    }
}
else if(m[? "Name"] == NPCName)
    draw_text(talkX,talkY,"These documents will help bring down#a corporate evil.");
else 
    draw_text(talkX,talkY,"Have you seen my documents?");
        

#define NPC007Dia
///NPC007Dia(Mission Entry, x, y1, y2)

m = argument0;
talkX = argument1;
talkY = argument2;
replyY = argument3;

draw_sprite(SprNPCManInSuit,0,centerX - 210, centerY + 80);

if(!m[? "Complete"])
{
    if(m[? "Started"])
    {
        if(m[? "Key Object"])
        {
            if(m[? "Name"] == REFUSE)
                draw_text(talkX, talkY, "Who are you working for?");
            else
            {
                draw_text(talkX,talkY,"That looks like the portfolio I'm after.#Will you hand it over?");
//                draw_text(talkX, replyY, "Will you hand it over? Y/N");
                buttons(talkX,replyY);
            }
        }
        else 
            draw_text(talkX,talkY,"Have you run into my suspect yet?");
    }
    else
    {
        draw_text(talkX,talkY,"I'm looking for a young man who's#staying at this hotel.#He's trying to steal corporate#secrets");
    }
}
else if(m[? "Name"] == NPCName)
    draw_text(talkX,talkY,"BigCorp thanks you for returning#these important documents.");
else
    draw_text(talkX,talkY,"Have you run into my suspect yet?");
    

#define NPC009Dia
///NPC009Dia(Mission Entry, x, y1, y2)

m = argument0;
talkX = argument1;
talkY = argument2;
replyY = argument3;

draw_sprite(SprNPCOldMan,0,centerX - 210, centerY + 80);

if(!m[? "Complete"])
{
    if(m[? "Started"])
    {
        if(m[? "Key Object"])
        {
            if(m[? "Name"] == REFUSE)
                draw_text(talkX, talkY, "That's a shame. It's the last letter#she ever sent me.")
            else
            {
                draw_text(talkX,talkY,"Is that my letter?");
//                draw_text(talkX, replyY, "Is it? Y//N");
                buttons(talkX,replyY);
            }
        }
        else 
            draw_text(talkX,talkY,"I'm still looking for my letter.#Have you seen it?");
    }
    else
    {
        draw_text(talkX,talkY,"I'm looking for a letter#from my wife.");
    }
}
else
    draw_text(talkX,talkY,"Thank you for finding#my letter");
    

#define buttons
///buttons(X,Y)
/*
*   Draw the Yes/No buttons
*/

talkX = argument0;
replyY = argument1;

// Set Alignment
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_black);

// Draw Buttons
btnYes = drawButton(talkX - (TXTDRAWBUFFER*2), replyY + (TXTDRAWBUFFER*2), BTN001);

btnNo = drawButton(talkX + (TXTDRAWBUFFER*2), replyY + (TXTDRAWBUFFER*2), BTN002);

//btnYes = device_mouse_check_button_pressed(0,mb_left)
//draw_text(talkX , replyY + (TXTDRAWBUFFER),"Click for Yes");

//btnNo = device_mouse_check_button_pressed(0,mb_right)
//draw_text(talkX , replyY + (TXTDRAWBUFFER*2),"Right Click for No");