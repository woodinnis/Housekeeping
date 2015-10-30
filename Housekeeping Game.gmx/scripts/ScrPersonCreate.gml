/*
*   Begin animation, and move each instance away from the spawn point
*/

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
}
