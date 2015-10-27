/*
*   Perform code on each frame
*   
*/

/*
*   Intro UI and Clerk interaction scripting.
*   These could both be moved into their own scripts if/when they are
*   reimplemented

if(!ObjOverlord.introRead)
{
    // Prevent player from moving until intro has been read
    moveSpeed = 0;
    // Move to a new message with each mouse click        
    if(device_mouse_check_button_pressed(0, mb_left))
    {
        ObjOverlord.showIntro++;
    }
}
else
    ObjOverlord.introRead = false;

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
*/
