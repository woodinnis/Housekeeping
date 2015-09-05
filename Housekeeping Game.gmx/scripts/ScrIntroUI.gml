// Show intro messages and intructions

switch(ObjOverlord.showIntro)
{
    case 00:
    {
        ObjOverlord.showIntro++;
        break;
    }
    case 01:
    {
        drawRect();
        alignUI();
        draw_set_valign(fa_bottom);
    
        draw_text(centerX, centerY, INTROMSG1);
        break;
    }
    case 02:
    {
        drawRect();
        alignUI();
        draw_set_valign(fa_bottom);
    
        draw_text(centerX, centerY, INTROMSG2);
        break;
    }
    case 03:
    {
        drawRect();
        alignUI();
        draw_set_valign(fa_bottom);
    
        draw_text(centerX, centerY, INTROMSG3);
        break;
    }
    case 04:
    {
        // Give player control once intro has been read
        ObjOverlord.introRead = true;
        ObjPlayerParent.moveSpeed = PLAYERSPEED;
        break;
    }
}
