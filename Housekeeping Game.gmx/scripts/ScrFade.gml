/*
*   Draw a rectangle over the screen and fade out to black at 
*   the end of each shift.
*/

var alpha = 0;
var rectX = 0;
var rectY = 0;
var rectW = 0;
var rectH = 0;
var fadeCount = 5;

rectX = -1;
rectY = -1;
rectW = view_wport[0] + 1;
rectH = view_hport[0] + 1;

draw_set_color(c_black);

//draw_rectangle(rectX, rectY, rectW, rectH, false);
