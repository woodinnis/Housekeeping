// Move away from spawn point
dir = choose(0,1);
isSpy = false;
image_speed = .5;
image_index = 0;

personCount = instance_number(ObjPerson);

if(ObjOverlord.drawSolution)
{
    for(i = 0; i < personCount; i++)
    {
        changeMe = instance_find(ObjPerson,i);
        if(changeMe.isSpy)
            break;
    }
    
    switch(currentCrime)   
    {
        case CRIME000:
        {
            // Check to see that the player is in the lobby at noon
            if(ObjUI.hours >= 12 && ObjUI.AmPm == 0)
            {
                // Has the victory condition happened yet?
                if(!ObjOverlord.demoVictory)
                {
                    // Show the spy for the first mission
                    if(!changeMe.isSpy)
                    {
                        changeMe.sprite_index = SprSpy;
                        isSpy = true;
                    }
                }
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
