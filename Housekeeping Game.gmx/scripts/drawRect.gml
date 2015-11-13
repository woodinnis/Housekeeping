/*
*   Draw the background sprite for dialogue boxes
*   
*   The box is downsized as necessary to fit the screen
*/

spriteScale = DIALOGUESCALE;

// Set sprite width/height
spriteW = sprite_get_width(SprDialogueBox) * spriteScale;
spriteH = sprite_get_height(SprDialogueBox) * spriteScale;

// Set sprite point-of-origin
spriteX = centerX - (spriteW / 2);
spriteY = (centerY - (spriteH / 2)) - TXTDRAWBUFFER;

// Mouse coordinates
mouseX = device_mouse_x_to_gui(0);
mouseY = device_mouse_y_to_gui(0);

// Scale and draw the background sprite for dialogue boxes
draw_sprite_stretched(SprDialogueBox, 0, spriteX, spriteY, spriteW, spriteH);

// While mouse is inside the rectangle, prevent player movement
if(point_in_rectangle(mouseX, mouseY, spriteX, spriteY, spriteW, spriteH))
{
    ObjPlayerParent.moveSpeed = 0;
    ObjDoorParent.doorEnter = false;
}
else
{
    ObjPlayerParent.moveSpeed = PLAYERSPEED;
    ObjDoorParent.doorEnter = true;
}
