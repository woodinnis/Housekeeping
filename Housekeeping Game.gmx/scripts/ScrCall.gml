// Player HUD displays the word "HOUSEKEEPING!" as they pass by each door
with(ObjDoor)
{
    // Works, but text moves off the screen when player gooes too far in either direction
    if(place_meeting(x,y, ObjPlayerHall))
    {
        StrCall = "HOUSEKEEPING!";
        CallX = (ObjPlayerHall.x - sprite_get_width(SprPlayerHallLeft)/2);
        CallY = (ObjPlayerHall.y - sprite_get_height(SprPlayerHallLeft)/2);
        
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        
        draw_text(CallX, CallY - 10, StrCall);
    }
}