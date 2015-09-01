// Retrive variables
roomNum = ObjOverlord.roomNum;
messNum = ObjOverlord.messNum;
messCollected = ObjOverlord.messCollected;
drawNotClean = ObjOverlord.drawNotClean;
drawMissionStart = ObjOverlord.drawMissionStart;

draw_set_colour(c_black);
draw_set_alpha(1);

// Create a string using the room's randomly generated number
roomName = "ROOM \#" + string(roomNum);

if(room != RoomHallway && room != RoomFrontDesk)
{
    // Draw the HUD underlay
//    draw_sprite(SprHUD, 0, 0, 0);

    draw_set_font(fontDEBUG);    
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
        draw_text(centerX, topThird, NOTCLEAN);
    }
}

// When in the Hallway, indicate that all items have been found
if(room == RoomHallway)
{
    alignUI();
    
    if(ObjOverlord.drawSolution)
    {
        drawRect();
        switch(currentCrime)
        {
            case CRIME000:
            {    
                draw_text(centerX,topThird,SOLUTION000);   
                break;
            }
            case CRIME001:
            case CRIME002:
            case CRIME003:
            default:
                break;
        }
    }
    if(ObjPlayerParent.touchingDoor && !ObjPlayerParent.enterDoor)
    {
        drawRect();
        draw_text(centerX, topThird, DONOTDISTURB);
    }
}

// Front Desk messages
if(room == RoomFrontDesk)
{
    alignUI();
    // Show a message when trying to enter a door without an active mission    
    if(drawMissionStart)
    {
        drawRect();
        draw_text(centerX,topThird,MISSIONSTART);
    }
}
