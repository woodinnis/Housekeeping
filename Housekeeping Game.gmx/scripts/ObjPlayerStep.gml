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