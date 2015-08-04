// Declare and set variables
tAlign = view_wview[0] / 2;

// Notify player that a clue has been found
if(room != RoomHallway)
{
    if(instance_exists(ObjClueParent))
    {
        if(ObjClueParent.hasBeenTouched)
        {
            draw_set_halign(fa_center);     
            draw_text(tAlign,20, "You Found Something!");
        }
    }
}

// Tell the player what they have found
if(room == RoomHallway)
{
    if(ObjOverlord.clueFound = true)
    {
        draw_set_halign(fa_center);
        draw_text(tAlign, 20, "You found a mysterious object while cleaning.");
        
        reset   = draw_text(tAlign, 40, "Put it back");
        search  = draw_text(tAlign, 60, "Search for the owner");
        keep    = draw_text(tAlign, 80, "Keep it");
    }
}
