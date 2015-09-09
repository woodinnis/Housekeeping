// Execute each frame

// If LMB on a spy, set victory state, and destroy the spy
if(device_mouse_check_button_pressed(0, mb_left))
{
    if(isSpy)
    {
        ObjOverlord.demoVictory = true;
        instance_destroy();
    }
}

if(dir = 0)
    x--;
else
    x++;