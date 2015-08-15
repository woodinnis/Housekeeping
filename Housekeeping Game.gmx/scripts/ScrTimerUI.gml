// Draw the time remaining on the HUD
//timeRemaining = ObjOverlord.clockTick;
tick++;


seconds = round(tick / room_speed);
minutes = 12;

DrawX = view_wview[0] - 20;

// Count time remaining and adjust variables
if(seconds > 59)
{
    seconds = 0;
    minutes++;
}   
if(minutes > 12)
{
    minutes=1;
    if(AmPm = 1)
        AmPm = 0;
    else
        AmPm = 1;
}


// Add leading zeros
show_minutes=string_repeat("0", 2-string_length(string(minutes)))+string(minutes);
show_seconds=string_repeat("0", 2-string_length(string(seconds)))+string(seconds);

draw_set_halign(fa_right);
draw_set_colour(c_black);
draw_set_alpha(1);
if(AmPm = 1)
    draw_text(DrawX, 40,"Current Time: " + show_minutes + ":" + show_seconds + "AM");
else
    draw_text(DrawX, 40,"Current Time: " + show_minutes + ":" + show_seconds + "PM");

/* Draw timer only in the room
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


