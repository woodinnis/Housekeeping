
// Draw the HUD underlay
draw_sprite(SprHUD,0,view_xview[0],view_yview[0]);


// Create a string using the room's randomly generated number
roomName = "ROOM # " + string(roomNum); // commented out until randomization can be corrected

// Draw the basic HUD
draw_text(view_xview[0] + 20, view_yview[0] + 20, "HOUSEKEEPING");

if(messCollected)
{
    draw_sprite(MessSm,0,view_xview[0] + 28, view_yview[0] + 48);
    draw_text(view_xview[0] + 30, view_yview[0] + 40, "x" + string(messNum));
}


// Draw the room number when inside a room
if(room == RoomRoomSm || room == RoomRoomLg)
{
    draw_text(view_xview[0] - string_length(roomName) + view_hview[0], view_yview[0] + 20, roomName);
}


