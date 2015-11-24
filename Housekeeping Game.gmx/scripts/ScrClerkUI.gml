#define ScrClerkUI
/*
*   Show a dialogue box, and text when the player clicks on the front desk clerk.
*   
*   After the player has been given tutorial information, the dialogue will contain
*   basic game information (Shift length, Shift goals, Current wage...)
*/
//var sz = font_get_size(fontDialogue);
var msgX = 0;
var msgY = 0;
var btnY = 0;

var NPC = instance_nearest(ObjPlayerParent.x,ObjPlayerParent.y, ObjNPCParent);
var INV = instance_nearest(ObjPlayerParent.x,ObjPlayerParent.y, ObjMissionItemParent);

if(ObjOverlord.introRead && ObjOverlord.clerkRead && !NPC.touchingPlayer)
{
    if(!position_meeting(mouse_x, mouse_y, INV))
    {
    
        var msgX = centerX;
        var msgY = topThird;
        var btnY = msgY + TXTDRAWBUFFER;
        
        alignUI();
        draw_set_valign(fa_top);
        // Draw the text spoken by the clerk
        switch(ObjOverlord.clerkSpeak)
        {
            case 00:
            {
                drawRect();
    
                draw_text(msgX, msgY, CLERKMSG00);
                
                ObjOverlord.clerkSpeak += ClerkButton(msgX, btnY);
                
                break;
            }
            case 01:
            {
                drawRect();
    
                draw_text(msgX, msgY, CLERKMSG01);
                
                ObjOverlord.clerkSpeak += ClerkButton(msgX, btnY);
                
                break;            
            }
            case 02:
            {
                drawRect();
                
                draw_text(msgX, msgY, CLERKMSG02);
                
                ObjOverlord.clerkSpeak += ClerkButton(msgX, btnY);
                
                break;
            }
            case 03:
            default:
            {
//                ObjOverlord.clerkRead = false;
//                ObjOverlord.clerkSpeak = 02;
                break;
            }
        }   // switch(ObjOverlord.clerkSpeak)
    }   // if(!position_meeting
}   // if(ObjOverlord.introRead

#define ClerkButton
///buttons(X,Y)
/*
*   Draw the OK button, and progress through the messages
*/

talkX = argument0;
replyY = argument1;

// Set alignment
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_black);

// Draw button
btnYes = drawButton(talkX, replyY + (TXTDRAWBUFFER*2), BTN001);
draw_text(talkX, replyY + (TXTDRAWBUFFER*2), "OK");

if(btnYes)
    return(1);
    
//btnYes = device_mouse_check_button_pressed(0,mb_left);//
