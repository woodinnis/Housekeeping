/* 
*   Display the number of object the player has cleaned on screen
*/

draw_set_halign(fa_left);
draw_set_valign(fa_top);

setX = 20;
setY = 20;

if(room == RoomFrontDesk || room == RoomMain)
{
    draw_set_font(fontDialogue);
    draw_set_colour(c_white);
    draw_text(setX, setY, ROOMMSG + string(cleanCount));
    
    draw_text(setX, setY + setY, CASHMSG + string(totalCash));
}

