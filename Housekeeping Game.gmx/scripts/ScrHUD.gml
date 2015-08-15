// Retrive variables
roomNum = ObjOverlord.roomNum;
messNum = ObjOverlord.messNum;
messCollected = ObjOverlord.messCollected;
drawNotClean = ObjOverlord.drawNotClean;

centerX = window_get_width()/2;
centerY = window_get_height()/2;

// Create a string using the room's randomly generated number
roomName = "ROOM \#" + string(roomNum);

if(room != RoomHallway && room != RoomFrontDesk)
{
    // Draw the HUD underlay
    draw_sprite(SprHUD, 0, 0, 0);
    
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

// When in the Hallway, indicate that all items have been found
if(room == RoomHallway)
{
    draw_set_font(fontMessages);
    draw_set_colour(c_black);
    draw_set_alpha(1);
    draw_set_halign(fa_center);
    
    if(ObjOverlord.drawSolution)
    {
        switch(currentCrime)
        {
            case CRIME000:
            {    
                draw_text(centerX,20,SOLUTION000);   
                break;
            }
            case CRIME001:
            case CRIME002:
            case CRIME003:
            default:
                break;
        }
    }
}