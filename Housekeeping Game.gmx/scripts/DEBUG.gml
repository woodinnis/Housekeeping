high = view_yview[0];
wide = view_xview[0];
if(debugPressed)
{
    draw_text(wide + 20, high + 400, "Level " + string(currentLevel));
    draw_text(wide + 20, high + 410, "Score " + string(currentScore));
    draw_text(wide + 20, high + 420, "Time Left " + string(ObjTimer.alarm[0]));
    draw_text(wide + 20, high + 430, "Entered " + string(enteredRoom));
    draw_text(wide + 20, high + 440, "Level Over " + string(ObjTimer.levelOver));
}
