// Check keyboard for valid movement keys
event_inherited();

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
        script_execute(ScrRoomExit);
    }      
}