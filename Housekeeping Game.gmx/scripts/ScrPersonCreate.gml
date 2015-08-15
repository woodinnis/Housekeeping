// Move away from spawn point
dir = choose(0,1);
isSpy = false;
image_speed = 0;
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
            // Show the spy for the first mission
            if(!changeMe.isSpy)
            {
                changeMe.image_index = 1;
                isSpy = true;
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