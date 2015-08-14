// Draw the time remaining on the HUD
timeRemaining = ObjTimer.alarm[0];

seconds = round(timeRemaining / room_speed);
minutes = round(seconds / 60);

DrawX = view_wview[0] - 20;

// Count time remaining and adjust variables
if(seconds < 0)
{
    seconds = 59;
    minutes--;
}   
if(minutes < 0)
{
    minutes = 59;
}

// Add leading zeros
show_minutes=string_repeat("0", 2-string_length(string(minutes)))+string(minutes);
show_seconds=string_repeat("0", 2-string_length(string(seconds)))+string(seconds);

// Draw timer only in the room
if(room != RoomHallway)
{
    if(object_exists(ObjTimer))
    {
        if(ObjTimer.alarm[0] >= 0)
        {
            draw_set_halign(fa_right);
            draw_text(DrawX, 40,"Time Remaining: " + show_minutes + ":" + show_seconds);
        }
    }
}



