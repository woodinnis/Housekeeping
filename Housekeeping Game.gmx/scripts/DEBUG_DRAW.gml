draw_set_halign(fa_left);

if(debug)
{
    draw_text(20, 20, "Level " + string(currentLevel));
    draw_text(20, 30, "Score " + string(currentScore));
    draw_text(20, 40, "Goal " + string(ObjOverlord.currentGoal));
    draw_text(20, 50, "Time Left " + string(ObjTimer.alarm[0]));
    draw_text(20, 60, "Level Over " + string(ObjTimer.levelOver));
}
