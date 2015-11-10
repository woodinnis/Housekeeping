/*
*   Draw buttons based on the arguments sent in the function call
*/

// Set variables based on function arguments
var btnX = argument0;
var btnY = argument1;
var btnType = argument2;

// Empty variable for final draw function
var button = "";

// User Interaction variables
var mouseX = 0;
var mouseY = 0;
var clicked = false;

// Check and set button type
switch(btnType)
{
    case BTN001:
    {
        button = SprEvidencePhone;
        break;
    }
    case BTN002:
    {
        button = SprEvidenceNote;
    }
    default:
        break;
}

// Draw button
draw_sprite(button, 0, btnX, btnY);

// Create a bounding box for the button
x1 = btnX - sprite_get_width(button)/2;
x2 = btnX + sprite_get_width(button)/2;
y1 = btnY - sprite_get_height(button)/2;
y2 = btnY + sprite_get_height(button)/2;

mouseX = device_mouse_x_to_gui(0);
mouseY = device_mouse_y_to_gui(0);

if(point_in_rectangle(mouseX, mouseY, x1,y1,x2,y2))
{
    ObjPlayerParent.moveSpeed = 0;
    if(device_mouse_check_button_pressed(0,mb_left))
    {
        clicked = true;
    }
}
else
    ObjPlayerParent.moveSpeed = PLAYERSPEED;

return(clicked);
