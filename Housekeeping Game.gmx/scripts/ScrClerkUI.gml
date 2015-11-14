#define ScrClerkUI
/*
*   Show a dialogue box, and text when the player clicks on the front desk clerk.
*   
*   After the player has been given tutorial information, the dialogue will contain
*   basic game information (Shift length, Shift goals, Current wage...)
*/

var msgX = centerX;
var msgY = drawRectY + TXTDRAWBUFFER;
var btnY = msgY + TXTDRAWBUFFER;

if(ObjOverlord.introRead && ObjOverlord.clerkRead)
{
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
            ObjOverlord.clerkRead = false;
            ObjOverlord.clerkSpeak = 02;
            break;
        }
            
    }   
}

#define ClerkButton
///buttons(X,Y)
/*
*   Draw the OK button, and progress through the messages
*/

talkX = argument0;
replyY = argument1;

btnYes = drawButton(talkX, replyY + TXTDRAWBUFFER, BTN001);
draw_text(talkX, replyY + TXTDRAWBUFFER, "OK");

if(btnYes)
    return(1);