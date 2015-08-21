// Set Player Variables
touchingClerk = false;
missionReceived = false;

// Set move speed
moveSpeed = 5;
image_speed = 0;

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
