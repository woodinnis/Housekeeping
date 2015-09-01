// Draw the current time on the HUD

// Draw a circle behind the displayed time
draw_set_colour(c_white);
draw_set_alpha(0.8);        
draw_circle(drawClockX,drawClockY,drawClockRad,false);
draw_circle(drawClockX,drawClockY,drawClockRad,true);

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

// Set UI
alignUI();
draw_set_valign(fa_middle); // Align middle
draw_set_font(fontDEBUG);   // Reset font

if(AmPm = 1)
    draw_text(drawClockX, drawClockY, show_hours + ":" + show_minutes + "AM");
else
    draw_text(drawClockX, drawClockY, show_hours + ":" + show_minutes + "PM");


