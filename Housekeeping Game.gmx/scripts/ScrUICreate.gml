// UI creation code
btnYes = false;     // Setting for the do not disturb sign
HUDBufferX = 60;    // Buffer for HUD elements on screen
HUDBufferY = 80;    // Buffer for HUD elements on screen
spriteBufferX = 60; // Buffer for Sprites on screen
spriteBufferY = 80; // Buffer for Sprites on screen

// Coordinates screen center
centerX = window_get_width()/2;
centerY = window_get_height()/2;
topThird = window_get_height()/3;

// Width and Height of the window
wide = window_get_width();
high = window_get_height();

// Background rectangle coordinates
drawRectX = centerX - 260;
drawRectY = topThird - 50;
drawRectWide = centerX + 260;
drawRectHigh = topThird + 100;

// Clock coordinates
drawClockX = wide - 100;
drawClockY = 40;
drawClockRad = 30

// UI Timer Create
// Day always starts at 09:00
hours = 9;
minutes = 0;

AmPm = 1;
