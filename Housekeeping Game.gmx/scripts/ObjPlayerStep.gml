// Perform each frame

// Set boolean
if(place_meeting(x,y,ObjClerk))
{
    touchingClerk = true;
    if(currentCrime > CRIME003)
    {
        currentCrime = CRIME000;
        ObjOverlord.missionStart = true;
    }
}
else
    touchingClerk = false;

// Show a message when trying to enter an elevator without starting a mission
if(!ObjOverlord.missionStart)
{   
    if(place_meeting(x,y,ObjElevator))   
        ObjOverlord.drawMissionStart = true;
    else
        ObjOverlord.drawMissionStart = false;
}
