// Set debug T/F
if(keyboard_check_pressed(ord("Q")))
{
    if(!debug)
        debug = true;
    else
        debug = false;
}

// Set debug functions
if(debug)
{
    if(keyboard_check_pressed(ord("P")))
    {
        ObjOverlord.messNum = 0;    // Clean room
    }
}
