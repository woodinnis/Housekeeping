// Set placement of mess objects and clues
if(room != RoomHallway)
{
    clueNum = round(random(3));
    show_message(clueNum);
    switch(currentLevel)
    {
        case LEVEL001:
        {
            FuncMess(5);
            FuncClue(clueNum);
            break;
        }
        case LEVEL002:
        {
            FuncMess(10);
            FuncClue(clueNum);
            break;
        }
        case LEVEL003:
        {
            FuncMess(15);
            FuncClue(clueNum);
            break;
        }
        case LEVEL004:
        case LEVEL005:
        case LEVEL006:
        case LEVEL007:
        case LEVEL008:
        case LEVEL009:
        case LEVEL010:
        {
            //FuncMess(20);
            break;
        }
    }
}
