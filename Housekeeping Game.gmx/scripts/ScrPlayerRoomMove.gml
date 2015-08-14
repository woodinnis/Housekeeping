// Check keyboard input for valid movement keys

moveUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
moveDown = keyboard_check(vk_down)|| keyboard_check(ord("S"));
moveRight = keyboard_check(vk_right)|| keyboard_check(ord("D"));
moveLeft = keyboard_check(vk_left)|| keyboard_check(ord("A"));

// Move player by appropriate amount in the selected direction

// UP
if(moveUp)
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
if(moveDown)
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
if(moveRight)
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
if(moveLeft)
{
    repeat(moveSpeed)
    {
        if (!place_meeting(x-1,y,ObjBarrier))
        {
            x -= 1;
        }
    }
}