// Draw the current time on the HUD

DrawX = view_wview[0] - 20;

if alarm[0] = -1
{
    alarm[0] = room_speed
}

// Tick minutes
if minutes = 60
{
    hours +=1
    minutes = 0;
}

// Tick hours
if hours > 12
{
    hours = 1
    minutes = 0
}

// AM/PM rollover
if(hours > 11 && minutes == 0)
{
    if(AmPm = 1)
        AmPm = 0;
    else
        AmPm = 1;
}

show_hours=string_repeat("0", 2-string_length(string(hours)))+string(hours);
show_minutes=string_repeat("0", 2-string_length(string(minutes)))+string(minutes);

alignUI();

// Set font
draw_set_font(fontDEBUG);

if(AmPm = 1)
    draw_text(DrawX, 40,"Current Time: " + show_hours + ":" + show_minutes + "AM");
else
    draw_text(DrawX, 40,"Current Time: " + show_hours + ":" + show_minutes + "PM");
