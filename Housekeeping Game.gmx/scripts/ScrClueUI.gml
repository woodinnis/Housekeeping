// Declare and set variables
tAlign = view_wview[0] / 2;

wide = window_get_width();
high = window_get_height();

// Notify player that a clue has been found
if(room != RoomHallway)
{
    if(instance_exists(ObjClueParent))
    {
        if(ObjClueParent.hasBeenTouched)
        {
            draw_set_halign(fa_center);   
            draw_set_colour(c_black);  
            draw_text(tAlign,20, "You Found Something!");
        }
    }
}

// Draw a 'post-it' note on the screen
if(room != RoomHallway && room != RoomFrontDesk)
{
    if(ObjOverlord.drawNote)
    {
        setX = (wide / 2) - 100;
        setY = (high / 2) - 100;
        draw_set_color(c_yellow);
        draw_rectangle(setX,setY,setX+200,setY+200,false);
        
        draw_set_colour(c_black);
        draw_set_halign(fa_left);
        draw_set_font(fontMessages);
        draw_text(setX+5, setY+5, COMMUNIQUE001);
    }
}
// Show player which clues they have found
/* Only display this information while in the hallway
if(room == RoomHallway)
{
    setX = view_wview[0];
    setY = view_hview[0];
    
    draw_set_halign(fa_right);
    draw_set_valign(fa_bottom);
    
    // Large    
    if(ObjOverlord.clueLg)
    {
        draw_text(setX - 20, setY - 60,"You found a large clue!");
    }
    // Medium
    if(ObjOverlord.clueMd)
    {
        draw_text(setX - 20, setY - 40,"You found a medium clue!");
    }
    // Small
    if(ObjOverlord.clueSm)
    {
        draw_text(setX - 20, setY - 20,"You found a small clue!");
    }
        
}
