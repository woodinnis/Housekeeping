if(room != RoomHallway)
{
    // Increment level and goals based on score
    if(currentScore >= currentGoal)
    {
        switch(currentGoal)
        {
            case SCORE001:
            {
                currentLevel = LEVEL002;
                currentGoal = SCORE002;
                currentScore = 0;
                break;
            }
            case SCORE002:
            {
                currentLevel = LEVEL003;
                currentGoal = SCORE003;
                currentScore = 0;
                break;
            }
            case SCORE003:
            {
                currentLevel = LEVEL004;
                //currentGoal = SCORE005;
                currentScore = 0;
                break;
            }
        }
    }
}
