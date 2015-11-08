/*
*   Draw buttons based on the arguments sent in the function call
*/

// Set variables based on function arguments
var btnX = argument0;
var btnY = argument1;
var btnType = argument2;

// Empty variable for final draw function
var button = "";

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
            
draw_rectangle(x1,y1,x2,y2,false);
if(point_in_rectangle(device_mouse_x(0),device_mouse_y(0), x1,y1,x2,y2))
{
    draw_text(x1,y1,"CLICK ME HARD!");
//    ObjPlayerParent.moveSpeed = 0;
//    if(device_mouse_check_button_pressed(0,mb_left))
    {
        
    }
}
else
    ObjPlayerParent.moveSpeed = PLAYERSPEED;

return(object_get_name(button));
