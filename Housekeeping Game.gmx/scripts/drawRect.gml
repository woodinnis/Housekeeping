//  Draw a white rectangle with a black border
draw_set_colour(c_white);
draw_set_alpha(0.4);
draw_rectangle(drawRectX, drawRectY, drawRectWide, drawRectHigh, false);
draw_set_colour(c_black);
draw_set_alpha(1);
draw_rectangle(drawRectX, drawRectY, drawRectWide, drawRectHigh, true);
