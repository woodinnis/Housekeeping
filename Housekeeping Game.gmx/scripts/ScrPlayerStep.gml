// Perform each frame

// Set boolean
if(place_meeting(x,y,ObjClerk))
{
    touchingClerk = true;
//    event_user(0);
    if(!missionReceived)
    {
        currentCrime = CRIME000;
        ObjOverlord.missionStart = true;
    }
    missionReceived = true;
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

// Show a message when trying to enter a door marked as Do Not Disturb
if(place_meeting(x,y,ObjDoor))
{
    touchingDoor = true;
    show_debug_message("touchingDoor");
    show_debug_message(ObjDoor.enterMe);
    if((ObjDoor.enterMe mod 5) == 0)
        enterDoor = false;
    else
        enterDoor = true;
}
else
    touchingDoor = false;
