// Retrive variables
roomNum = ObjOverlord.roomNum;
messNum = ObjOverlord.messNum;
messCollected = ObjOverlord.messCollected;
drawNotClean = ObjOverlord.drawNotClean;

// Create a string using the room's randomly generated number
roomName = "ROOM \#" + string(roomNum);

if(room != RoomHallway)
{
    // Draw the HUD underlay
    draw_sprite(SprHUD, 0, 0, 0);
    
    // Draw the basic HUD
    draw_set_halign(fa_left);
    draw_text(20, 20, "HOUSEKEEPING");
    
    if(messCollected)
    {
        draw_sprite(MessSm,0,view_xview[0] + 28, view_yview[0] + 48);
        draw_text(view_xview[0] + 30, view_yview[0] + 40, "x" + string(messNum));
    }
    
    // Draw the room number
    thisLong = string_length(roomName);
    draw_set_halign(fa_right)
    draw_text(view_wview[0] - 20, view_yview[0] + 20, roomName);
    
    if(drawNotClean)
    {
        draw_set_halign(fa_center);
        draw_text(view_wview[0] / 2, 40, NOTCLEAN);
    }
}
