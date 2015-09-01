// UI creation code
drawDND = false     // Setting for the do not disturb sign

// Coordinates for centering text on screen
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

// UI Timer Create
// Day always starts at 09:00
hours = 9;
minutes = 0;

AmPm = 1;
