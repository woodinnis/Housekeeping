// Display a victory message when the player completes a mission successfully

if(ObjOverlord.drawSolution)
{
    alignUI()
    
    switch(currentCrime)
    {
        case CRIME000:
        {
            if(ObjOverlord.demoVictory)
            {
                draw_text(centerX, 20, VICTORY000);
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
