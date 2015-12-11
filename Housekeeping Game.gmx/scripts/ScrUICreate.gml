// UI creation code
btnYes = false;     // Setting for the do not disturb sign
HUDBufferX = 60;    // Buffer for HUD elements on screen
HUDBufferY = 10;    // Buffer for HUD elements on screen
spriteBufferX = 60; // Buffer for Sprites on screen
spriteBufferY = 10; // Buffer for Sprites on screen

// Coordinates screen center
switch(os_type)
{
    case os_windows:
    {
        centerX = window_get_width()/2;
        centerY = window_get_height()/2;
        topThird = window_get_height()/3;
        break;
    }
    case os_android:
    {
        if(display_get_orientation() == display_landscape || display_get_orientation() == display_landscape_flipped)
        {
            centerX = display_get_height()/2;
            centerY = display_get_width()/2;
            topThird = display_get_width()/3;
        }
        else
        {
            centerX = display_get_width()/2;
            centerY = display_get_height()/2;
            topThird = display_get_height()/3;
        }
        break;
    }
}

// Width and Height of the window
wide = window_get_width();
high = window_get_height();

// Background rectangle coordinates
drawRectX = centerX - 260;
drawRectY = topThird - 50;
drawRectWide = centerX + 260;
drawRectHigh = topThird + 100;

// Clock coordinates
drawClockX = wide - 60;
drawClockY = 80;
drawClockRad = 30

// UI Timer Create
// Day always starts at 09:00
hours = 9;
minutes = 0;

AmPm = 1;

// UI Warnings and markers
elevatorTouched = false;

UIFont = font_add_sprite(SprNeonFont, ord("!"), true, 0);
