// Perform each frame
if(!ObjOverlord.introRead)
{
    ObjOverlord.showIntro = true;
    if(device_mouse_check_button_pressed(0, mb_left))
    {
        ObjOverlord.introRead = true;
    }
}
else
    ObjOverlord.showIntro = false;

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
    // Identify the door currently being touched
    Door = instance_place(x,y,ObjDoor);
    
    // Whether or not to display DND message
    touchingDoor = true;
    if((Door.enterMe mod 5) == 0)
        enterDoor = false;
    else
        enterDoor = true;
}
else
    touchingDoor = false;
