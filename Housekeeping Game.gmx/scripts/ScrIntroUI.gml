// Show intro messages and intructions

if(ObjOverlord.showIntro)
{
    drawRect();
    alignUI();
    draw_set_valign(fa_bottom);
    
    draw_text(centerX, centerY, INTROMSG1);
}
