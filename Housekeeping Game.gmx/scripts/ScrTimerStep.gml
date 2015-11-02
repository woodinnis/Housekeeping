/*
*   Test the current shift, shift status, and shift time of the player at each frame
*   Reset shift and shift status when timer resets
*
*   Perform player operations (income, cleanCount reset, move rooms) at end of shift
*/

if(newShift)    // Perform if a new shift is starting
{
    if(shiftStart)  // If a shift has started
    {
        timer = (shiftTime * 60);   // shiftTime is in Minutes. Multiply by 60 for total seconds

        alarm[0] = timer * room_speed;
        
        newShift = false;
    }
    else    // If a shift has just ended
    {
        // Player operations
        with(ObjPlayerParent)
        {
            // Relocate player if they are anywhere but the Front Desk
            if(room != RoomFrontDesk)
                room_goto(RoomFrontDesk);
            
            // If player has reached a milestone
            if(cleanCount >= currentLevel)
            {
                totalCash += currentLevel;
                newLevel = true;
            }
            
            // Adjust player variables
            totalCash += (cleanCount * WAGE);
            shiftStart = true;
            cleanCount = 0;
        }
    }
}
else    // If a shift is currently underway
{
    // When the alarm reaches zero, begin a new shift
    if(alarm[0] <= 0)
    {
        newShift = true
    }
}

