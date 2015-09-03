// Player movement controls in hallways
event_inherited();

// Get the game window width and height
wide = window_get_width();
high = window_get_height();

// Get mouse position in the game window
moveX = window_mouse_get_x();
moveY = window_mouse_get_y();
buffer = MOUSEMOVEBUFFER;   // Set mousecheck buffer

// Check keyboard for valid movement keys
moveLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
moveRight = keyboard_check(vk_right) || keyboard_check(ord("D"));

// For entry into doorways use the up keys
doorClick = device_mouse_check_button_pressed(0, mb_left);
moveUp = keyboard_check(vk_up) || keyboard_check(ord("W"));

// Left
if(moveLeft || moveX < buffer)
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
if(moveRight || moveX > wide - buffer)
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
if(moveUp || doorClick)
{
    // Prevent entry to doors unless a mission has been started
    if(ObjOverlord.missionStart)
        if(place_meeting(x,y,ObjDoorParent))
            script_execute(ScrRoomExit);  
}
