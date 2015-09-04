// UI Elements for the clerk, and mission briefings

if(ObjPlayerParent.touchingClerk)
{
    // Check for the Intro box
    if(!ObjOverlord.showIntro)
    {
        // Draw a rectangle behind the on-screen text
        drawRect();
        alignUI();
        draw_set_valign(fa_middle);
        // Draw the text spoken by the clerk
        switch(currentCrime)
        {
            case CRIME000:
            {
                if(ObjOverlord.noteFound)
                    sayMe = TRANSLATE000;
                else
                    sayMe = MISSION000;
                draw_text(centerX,topThird,sayMe);
                break;
            }
            case CRIME001:
            case CRIME002:
            case CRIME003:
            default:
                break;
        }
    }
}
