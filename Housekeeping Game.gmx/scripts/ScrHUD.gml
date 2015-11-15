/*
*   Show important HUD and UI elements
*/

// Mouse coordinates
var mouseX = device_mouse_x(0);
var mouseY = device_mouse_y(0);

// Text placement
var talkX = 0;
var talkY = 0;

var NPC;

// If the elevator has not yet been used, show a message when the player first moves
// the mouse over it, providing instructions.
if(!elevatorTouched && ObjOverlord.introRead)
{
    NPC = instance_nearest(ObjPlayerParent.x,ObjPlayerParent.y, ObjNPCParent);
    
    if(!NPC.touchingPlayer)
    {
        if(position_meeting(mouseX, mouseY, ObjElevator))
        {
            // Align text
            drawRect();
            alignUI();
            draw_set_valign(fa_middle);
            talkX = centerX;
            talkY = drawRectY + TXTDRAWBUFFER;
            
            elevatorTouched = drawButton(talkX, talkY + TXTDRAWBUFFER, BTN001);
            
            // Message
            draw_text(talkX, talkY, ELEVATOR);
        }
    }
}
