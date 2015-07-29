// Notify player that a clue has been found
if(room != RoomHallway)
{
    if(instance_exists(ObjClueParent))
    {
        tAlign = view_wview[0] / 2;
        if(ObjClueParent.hasBeenTouched)
        {
            draw_set_halign(fa_center);     
            draw_text(tAlign,20, "You Found Something!");
        }
    }
}
