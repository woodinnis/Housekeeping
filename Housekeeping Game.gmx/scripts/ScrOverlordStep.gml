if(room != RoomHallway && room != RoomFrontDesk)
{
    // Increment level and goals based on score
    if(currentScore >= currentGoal)
    {
        // Reset room state
        enteredRoom = false;
//        ObjTimer.alarm[0] = -1;

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
            default:
                break;
        }
    }
}

// Show or hide the inventory bar
if(room != RoomMenu)
{
    if(keyboard_check_pressed(ord("I")))
        if(showInv)
            showInv = false;
        else
            showInv = true;
}

/* In Hallway
if(room == RoomHallway)
{
    // Reset number of mess items to zero
    if(messNum < 0)
        messNum = 0;

    // Reset NotClean to false
    drawNotClean = false;
    
    switch(currentCrime)
    {
        case CRIME000:
        {
            if(shirtFound && docsFound && noteFound)
            {
                drawSolution = true;
            }
            break;
        }
        case CRIME001:
        case CRIME002:
        case CRIME003:
        default:
        {
            break;
        }
    }
}

// Spawn people in the lobby
if(room == RoomFrontDesk)
{
    if(instance_exists(ObjSpawnParent))
        spawnCount = instance_number(ObjSpawnParent);
    
    if(instance_number(ObjPerson) < 4)
    {
        do
        {
            spawnHere = instance_find(ObjSpawnParent, irandom(spawnCount));
        }until(spawnHere != noone && spawnHere.isOccupied == false)

        instance_create(spawnHere.x, spawnHere.y,ObjPerson)
    }
}
*/

