// Set internal variables
clueType = argument0;
spawnCount = instance_number(ObjSpawnPt);

if(room != RoomHallway)
{
    do
        spawnHere = instance_find(ObjSpawnPt, random(spawnCount));
    until(spawnHere.isOccupied == false)

    switch(clueType)
    {
        case 0:
        {
            instance_create(spawnHere.x,spawnHere.y,ObjClueLg);
            break;
        }
        case 1:
        {
            instance_create(spawnHere.x,spawnHere.y,ObjClueMd);
            break;
        }
        case 2:
        {
            instance_create(spawnHere.x,spawnHere.y,ObjClueSm);
            break;
        }
        default:
            break;
    }
}
