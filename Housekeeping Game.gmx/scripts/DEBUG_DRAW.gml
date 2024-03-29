draw_set_halign(fa_left);
draw_set_colour(c_black);
draw_set_alpha(1);
draw_set_font(fontDEBUG);

bottom = window_get_height();

if(debug)
{   
    m = missionList[| 0];
    draw_text(20, bottom - 130, "Mouse X/Y: " + string(window_mouse_get_x()) + "," + string(window_mouse_get_y()))
    draw_text(20, bottom - 120, "Shift Time: " + string(shiftTime) + " hours");
    draw_text(20, bottom - 110, m[? "Key Object"]);
//    draw_text(20, bottom - 100, "Mission: " + string(ObjOverlord.missionStart));
    draw_text(20, bottom - 90, "Objects Cleaned: " + string(cleanCount));
    draw_text(20, bottom - 80, "Level " + string(currentLevel));

//    draw_text(20, bottom - 60, "Goal " + string(ObjOverlord.currentGoal));
//    draw_text(20, bottom - 50, "Time Left " + string(ObjTimer.alarm[0]));
//    draw_text(20, bottom - 40, "Level Over " + string(ObjTimer.levelOver));
    
    if(position_meeting(ObjNPCParent.x,ObjNPCParent.y,ObjPlayerParent))
        draw_text(20, bottom - 150, "TOUCHING!");
    
    if(showEvidence)
    {
        if(ObjOverlord.shirtFound)
            draw_text(20, bottom - 130, "SHIRT!");
        if(ObjOverlord.docsFound)
            draw_text(20, bottom - 120, "DOCS!");
        if(ObjOverlord.noteFound)
            draw_text(20, bottom - 110, "NOTE!");
            
        if(instance_exists(ObjEvidenceParent) && instance_exists(ObjClueParent))
            draw_text(20, bottom - 30, "Radius " + string(ObjEvidenceParent.radius));
    
        if(room != RoomHallway && room != RoomFrontDesk)
            draw_text(20, bottom - 20, "Check True " + string(ObjOverlord.checkTrue));
    }
}
