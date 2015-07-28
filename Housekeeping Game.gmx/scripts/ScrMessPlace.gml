// Set placement of mess objects
if(room != RoomHallway)
{
    switch(currentLevel)
    {
        case LEVEL001:
        {
            FuncMess(5);
            break;
        }
        case LEVEL002:
         {
            FuncMess(10);
            break;
        }
        case LEVEL003:
         {
            FuncMess(15);
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
