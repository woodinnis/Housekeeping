// Retrive variables
roomNum = ObjOverlord.roomNum;
messNum = ObjOverlord.messNum;
messCollected = ObjOverlord.messCollected;
drawNotClean = ObjOverlord.drawNotClean;

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
        draw_sprite(MessSm,0, spriteBufferX, spriteBufferY);
        draw_text(HUDBufferX, HUDBufferY, "x" + string(messNum));
    }
    
    // Draw the room number
    thisLong = string_length(roomName);
    draw_set_halign(fa_right)
    draw_text(wide - HUDBufferX, HUDBufferY, roomName);
    
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
}

// At the Front Desk
if(room == RoomFrontDesk)
{  
    // Check for the Intro box
    if(!ObjOverlord.showIntro)
    {
        // This used to contain a "Mission has not started" warning
        // It will need to be replaced with a "Shift has not started"
        // equivalent
    }
}
