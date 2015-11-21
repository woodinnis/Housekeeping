#define ScrIntroUI
/*
*   Show an introductory message at the beginning of the game.
*/

var msgX = centerX;
var msgY = topThird;
var btnY = (msgY*2);// + TXTDRAWBUFFER;

switch(ObjOverlord.showIntro)
{
    case 00:
    {
        ObjOverlord.showIntro++;
        break;
    }
    case 01:
    {
        drawRect();
        alignUI();
        draw_set_valign(fa_top);
    
        draw_text(msgX, msgY, INTROMSG1);
        
        ObjOverlord.showIntro += OKbutton(msgX, btnY);
        
        break;
    }
    case 02:
    {
        drawRect();
        alignUI();
        draw_set_valign(fa_top);
    
        draw_text(msgX, msgY, INTROMSG2);
        
        ObjOverlord.showIntro += OKbutton(msgX, btnY);
        
        break;
    }
    case 03:
    {
        drawRect();
        alignUI();
        draw_set_valign(fa_top);
    
        draw_text(msgX, msgY, INTROMSG3);
        
        ObjOverlord.showIntro += OKbutton(msgX, btnY);
        
        break;
    }
    case 04:
    {
        // Give player control once intro has been read
        ObjOverlord.introRead = true;
        ObjPlayerParent.canMove = true;
        break;
    }
}

#define OKbutton
///buttons(X,Y)
/*
*   Draw the OK button, and progress through the messages
*/

talkX = argument0;
replyY = argument1;



btnYes = drawButton(talkX, replyY + (TXTDRAWBUFFER * 2), BTN001);
draw_set_halign(fa_left);
draw_text(talkX, replyY + (TXTDRAWBUFFER * 2), "OK");

if(btnYes)
    return(1);