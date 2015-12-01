// Set Player Variables
touchingClerk = false;
missionReceived = false;

moveSpeed = 0;
image_speed = 0;

// Set a default return value for the valid path check
goodPath = false;

if(room == RoomHallway)
{
    startX = 0;

    // Check for an empty x,y coordinate set
    while(!place_empty(startX,y))
    {
        // Randomize the x-coord
        startX = round(random(room_width - sprite_width));
    }
    
    // If spawning in the hallway, use the random x coordinate
    
        x = startX;
}
