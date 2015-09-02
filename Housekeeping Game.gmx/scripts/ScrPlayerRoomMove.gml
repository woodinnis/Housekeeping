// Player movement controls inside a room
event_inherited();

// Get the game window width and height
wide = window_get_width();
high = window_get_height();

// Get mouse position in the game window
moveX = window_mouse_get_x();
moveY = window_mouse_get_y();
buffer = MOUSEMOVEBUFFER;   // Set mousecheck buffer

// Check keyboard input for valid movement keys
moveUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
moveDown = keyboard_check(vk_down)|| keyboard_check(ord("S"));
moveRight = keyboard_check(vk_right)|| keyboard_check(ord("D"));
moveLeft = keyboard_check(vk_left)|| keyboard_check(ord("A"));

// Move player by appropriate amount in the selected direction

// UP
if(moveUp || moveY < buffer)
{
    repeat(moveSpeed)
    {
        
        if (!place_meeting(x,y-1,ObjBarrier))
        {
            y -= 1;
        }
    }
}

// DOWN
if(moveDown || moveY > high - buffer)
{
   repeat(moveSpeed)
    {
        if (!place_meeting(x,y+1,ObjBarrier))
        {
            y += 1;
        }
    }
}

// RIGHT
if(moveRight || moveX > wide - buffer)
{
    repeat(moveSpeed)
    {
        if (!place_meeting(x+1,y,ObjBarrier))
        {
            x += 1;
        }
    }
}

// LEFT
if(moveLeft || moveX < buffer)
{
    repeat(moveSpeed)
    {
        if (!place_meeting(x-1,y,ObjBarrier))
        {
            x -= 1;
        }
    }
}
