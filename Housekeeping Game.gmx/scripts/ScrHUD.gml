// Retrive variables
messCollected = ObjOverlord.messCollected;
drawNotClean = ObjOverlord.drawNotClean;

if(room == RoomFrontDesk || room == RoomMain)
{
    draw_text(50,50,cleanCount);
}

/* At the Front Desk
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
