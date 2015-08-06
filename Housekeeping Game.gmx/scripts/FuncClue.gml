// Set internal variables
clueType = argument0;
spawnCount = instance_number(ObjSpawnParent);

if(room != RoomHallway)
{
    if(instance_exists(ObjSpawnParent))
    {
        do
            spawnClue = instance_find(ObjSpawnParent, random(spawnCount));
        until(spawnClue.isOccupied == false)
    }

    switch(clueType)
    {
        case 0:
        {
            instance_create(spawnClue.x,spawnClue.y,ObjClueLg);
            break;
        }
        case 1:
        {
            instance_create(spawnClue.x,spawnClue.y,ObjClueMd);
            break;
        }
        case 2:
        {
            instance_create(spawnClue.x,spawnClue.y,ObjClueSm);
            break;
        }
        default:
            break;
    }
}
