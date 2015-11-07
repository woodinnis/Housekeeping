/*
*   When called, adjust currentLevel to the next LEVEL* in progression
*
*   When certain levels are reached, shift time will increase as well.
*/

switch(currentLevel)
{
    case LEVEL001:
    {
        currentLevel = LEVEL002;
        shiftTime = SHIFTTIME02;
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
        shiftTime = SHIFTTIME03;
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
        shiftTime = SHIFTTIME04;
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

