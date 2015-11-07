/*
*   When the Timer indicates the player has reached a milestone, adjust currentLevel
*   to the next LEVEL* in progression
*/

if(!newLevel)
{
        show_debug_message("new level");
    switch(currentLevel)
    {
        case LEVEL001:
        {
            currentLevel = LEVEL002;
            show_debug_message("level " + string(currentLevel));
            shiftTime = SHIFTTIME04;
            show_debug_message("Shift " + string(shiftTime));
            break;
        }
        case LEVEL002:
        {
            currentLevel = LEVEL003;
            break;
        }
        case LEVEL003:
        {
            currentLevel = LEVEL004;
            break;
        }
        case LEVEL004:
        {
            currentLevel = LEVEL005;
            break;
        }
        case LEVEL005:
        {
            currentLevel = LEVEL006;
            break;
        }
        case LEVEL006:
        {
            currentLevel = LEVEL007;
            break;
        }
        case LEVEL007:
        {
            currentLevel = LEVEL008;
            break;
        }
        case LEVEL009:
        {
            currentLevel = LEVEL010;
            break;
        }
        case LEVEL010:
        default:
        {
            currentLevel = 0;
            break;
        }
    }
    newLevel = false;
}

