// Display a victory message when the player completes a mission successfully

if(ObjOverlord.drawSolution)
{
    switch(currentCrime)
    {
        case CRIME000:
        {
            if(ObjOverlord.demoVictory)
            {
                alignUI();
                drawRect();
                draw_set_valign(fa_bottom);
                draw_text(centerX, centerY, VICTORY000);
            }
            break;
        }
        case CRIME001:
        case CRIME002:
        case CRIME003:
        default:
            break;
    }
}
