/*
*   Show important HUD and UI elements
*/

// Mouse coordinates
var mouseX = device_mouse_x(0);
var mouseY = device_mouse_y(0);

// Text placement
var talkX = 0;
var talkY = 0;

// Tool count placement
var toolX = window_get_width();
if(window_get_fullscreen())
{
    var toolY = 10;
    var goto = 1200;
}
else
{
    var toolY = HUDBufferY;
    var goto = view_xport[0];
}

var bleachCount = 0;
var towelCount = 0;
var sheetCount = 0;

var NPC;

// If the elevator has not yet been used, show a message when the player first moves
// the mouse over it, providing instructions.
if(room != RoomMenu)
{
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
                draw_set_valign(fa_top);
                talkX = centerX;
                talkY = topThird;
                            
                // Message
                draw_text(talkX, talkY, ELEVATOR);
            }
        }
    }


    // Draw tool count on HUD
    bleachCount = ds_map_find_value(myInventory, INVBLEACH);
    if(is_undefined(bleachCount))
        bleachCount = 0;
    
    towelCount = ds_map_find_value(myInventory, INVTOWELS);
    if(is_undefined(towelCount))
        towelCount = 0;
    
    sheetCount = ds_map_find_value(myInventory, INVSHEETS);
    if(is_undefined(sheetCount))
        sheetCount = 0;
    
    draw_sprite_stretched(SprBleach, 0, goto + 470, toolY, 16, 32);//draw_sprite_stretched(SprBleach, 0, toolX - (HUDBufferX * 3), toolY, 16, 32);
    draw_text(goto + 485, toolY, "x" + string(bleachCount));
    draw_sprite_stretched(SprTowels, 0, goto + 530, toolY, 16, 32);
    draw_text(goto + 545, toolY, "x" + string(towelCount));
    draw_sprite_stretched(SprSheets, 0, goto + 590, toolY, 16, 32);
    draw_text(goto + 605, toolY, "x" + string(sheetCount));
}
