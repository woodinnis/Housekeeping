// Display a victory message when the player completes a mission successfully

centerX = window_get_width()/2;
centerY = window_get_height()/2;

if(ObjOverlord.drawSolution)
{
    draw_set_font(fontMessages);
    draw_set_colour(c_black);
    draw_set_alpha(1);
    draw_set_halign(fa_center);
    
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