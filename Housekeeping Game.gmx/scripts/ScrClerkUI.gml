// UI Elements for the clerk, and mission briefings

if(ObjPlayerParent.touchingClerk)
{
    draw_set_font(fontMessages);
    draw_set_colour(c_black);
    
    switch(currentCrime)
    {
        case CRIME000:
        case CRIME001:
        case CRIME002:
        case CRIME003:
        {
            draw_text(50,50,MISSION000);
            break;
        }
        default:
            break;
    }
}
