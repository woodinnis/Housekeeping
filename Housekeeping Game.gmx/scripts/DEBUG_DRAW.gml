draw_set_halign(fa_left);
draw_set_colour(c_black);
draw_set_alpha(1);
draw_set_font(fontDEBUG);

bottom = view_hview[0];

if(debug)
{   
    draw_text(20, bottom - 90, "Crime " + string(currentCrime));
    draw_text(20, bottom - 80, "Level " + string(currentLevel));
    draw_text(20, bottom - 70, "Score " + string(currentScore));
    draw_text(20, bottom - 60, "Goal " + string(ObjOverlord.currentGoal));
//    draw_text(20, bottom - 50, "Time Left " + string(ObjTimer.alarm[0]));
//    draw_text(20, bottom - 40, "Level Over " + string(ObjTimer.levelOver));
    
    if(instance_exists(ObjEvidenceParent) && instance_exists(ObjClueParent))
        draw_text(20, bottom - 30, "Radius " + string(ObjEvidenceParent.radius));
    
    if(room != RoomHallway && room != RoomFrontDesk)
        draw_text(20, bottom - 20, "Check True " + string(ObjOverlord.checkTrue));
}
