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
        ObjOverlord.cleanCount = 0;    // Clean room
    }
    if(keyboard_check_pressed(ord("S")))
    {
        cleanCount = get_integer("Set Number of Cleaned Items", 0)
    }
    
    if(keyboard_check_pressed(ord("E")))
    {
        showEvidence = true;
    }
    if(keyboard_check_pressed(vk_escape))
    {
        game_restart();
    }
    if(keyboard_check_pressed(ord("H")))
    {
        ObjOverlord.missionStart = true;
        room_goto(RoomHallway);
    }
    if(keyboard_check_pressed(ord("N")))
    {
        ObjUI.hours = 11;
        ObjUI.minutes = 50;
        ObjUI.AmPm = 1;
    }
    if(keyboard_check_pressed(vk_enter))
    {
        target = instance_find(ObjPerson,0);
        target.sprite_index = SprSpy;
        target.isSpy = true;
        ObjOverlord.drawSolution = true;
    }
}
