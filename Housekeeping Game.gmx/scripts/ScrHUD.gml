// Retrive variables
cleanCount = ObjOverlord.cleanCount;
messCollected = ObjOverlord.messCollected;
drawNotClean = ObjOverlord.drawNotClean;

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
