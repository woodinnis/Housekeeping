if(room != RoomHallway)
{
    // Increment level based on score
    switch(currentScore)
    {
        case SCORE001:
        {
            currentLevel = LEVEL002;
            currentScore = 0;
            break;
        }
        case SCORE002:
        {
            currentLevel = LEVEL003;
            currentScore = 0;
            break;
        }
        case SCORE003:
        {
            currentLevel = LEVEL004;
            currentScore = 0;
            break;
        }
    }
}
