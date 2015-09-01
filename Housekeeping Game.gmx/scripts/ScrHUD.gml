// Retrive variables
roomNum = ObjOverlord.roomNum;
messNum = ObjOverlord.messNum;
messCollected = ObjOverlord.messCollected;
drawNotClean = ObjOverlord.drawNotClean;
drawMissionStart = ObjOverlord.drawMissionStart;

// Create a string using the room's randomly generated number
roomName = "ROOM \#" + string(roomNum);

// In Rooms
if(room == RoomRoomSm || room == RoomRoomLg)
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

// When in the Hallway
if(room == RoomHallway)
{
    alignUI();
    
    // Indicate that all items have been found    
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

    // Indicate that a Do Not Disturb sign is on a door
    if(ObjPlayerParent.touchingDoor && !ObjPlayerParent.enterDoor)
    {
        drawRect();
        draw_text(centerX, topThird, DONOTDISTURB);
    }
}

// At the Front Desk
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
