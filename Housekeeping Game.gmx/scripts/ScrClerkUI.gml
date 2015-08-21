// UI Elements for the clerk, and mission briefings

if(ObjPlayerParent.touchingClerk)
{
    draw_set_font(fontMessages);
    draw_set_colour(c_black);
    draw_set_halign(fa_center);
    
    switch(currentCrime)
    {
        case CRIME000:
        case CRIME001:
        case CRIME002:
        case CRIME003:
        {
            draw_text(centerX,topThird,MISSION000);
            break;
        }
        default:
            break;
    }
}
