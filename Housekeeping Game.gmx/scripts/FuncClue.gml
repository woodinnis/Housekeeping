// Set internal variables
clueCount = argument0;
spawnCount = instance_number(ObjSpawnParent);

// If currently not in a hallway begin spawning a clue
if(room != RoomHallway)
{
    for(i = 0; i < clueCount; i++)
    {
        // Verify the presence of spawn points in the room
        if(instance_exists(ObjSpawnParent))
        {
            do  // Locate an empty spawn point
                spawnClue = instance_find(ObjSpawnParent, random(spawnCount));
            until(spawnClue.isOccupied == false)
        }

        // Choose a type of clue to spawn
        clueType = irandom(3);
        
        // Spawn the clue at the empty spawn point
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
}