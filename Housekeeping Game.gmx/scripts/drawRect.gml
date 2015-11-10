//  Draw a white rectangle with a black border
draw_set_colour(c_white);
draw_set_alpha(0.6);
draw_roundrect(drawRectX, drawRectY, drawRectWide, drawRectHigh, false);
draw_set_colour(c_black);
draw_set_alpha(1);
draw_roundrect(drawRectX, drawRectY, drawRectWide, drawRectHigh, true);

// Mouse coordinates
mouseX = device_mouse_x_to_gui(0);
mouseY = device_mouse_y_to_gui(0);

// While mouse is inside the rectangle, prevent player movement
if(point_in_rectangle(mouseX, mouseY, drawRectX, drawRectY, drawRectWide, drawRectHigh))
{
    ObjPlayerParent.moveSpeed = 0;
    ObjDoorParent.doorEnter = false;
}
else
{
    ObjPlayerParent.moveSpeed = PLAYERSPEED;
    ObjDoorParent.doorEnter = true;
}
