// Check keyboard for valid movement keys

moveLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
moveRight = keyboard_check(vk_right) || keyboard_check(ord("D"));

// For entry into doorways use the up keys

moveUp = keyboard_check(vk_up) || keyboard_check(ord("W"));

// Left
if(moveLeft)
{
    repeat(moveSpeed)
        {
            if (!place_meeting(x-1,y,ObjBarrier))
            {
                x -= 1;
                sprite_index = SprPlayerHallLeft;
            }
            
            
        }
}

// Right
if(moveRight)
{
    repeat(moveSpeed)
        {
            if (!place_meeting(x+1,y,ObjBarrier))
            {
                x += 1;
                sprite_index = SprPlayerHallRight;
            }
            
        }
}

// Up
// I believe the same code used to create collision/blocking volumes could be used
// here for the doors.

if(moveUp)
{
    if (place_meeting(x,y,ObjDoor))
    {
        randomize();
        roomNumber = round(random(100));
        
        // The 24-07-1400 build of this code worked perfectly
        // After implementation of the ObjMess fix (spawning in inaccessable areas)
        // it no longer functions reliably.
        // At most, two rooms can be entered before the game freezes.

        if(roomNumber mod 2 == 1)
        {
            room_goto(RoomRoomSm);
        }
        else
        {
            //room_goto(RoomRoomLg);
            room_goto(RoomRoomSm);
        }
    }      
}
