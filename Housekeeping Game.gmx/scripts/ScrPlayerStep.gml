/*
*   Perform code on each frame
*   
*/

// Reset "Name" key in the missionList if it has been refused
if(ds_exists(missionList, ds_type_list))
{
    if(!place_meeting(x,y,ObjNPCParent))
    {
        n = ds_list_size(missionList)
        for(i = 0; i < n; i++)
        {
            m = missionList[| i];
            if(m[? "Name"] == REFUSE)
            {     
                m[? "Name"] = "0";
            }
        }
    }
}
/*
if(!shiftStart)
{
    room_goto(RoomFrontDesk);
    totalCash += (cleanCount * WAGE);
    shiftStart = true;
    cleanCount = 0;
}


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
