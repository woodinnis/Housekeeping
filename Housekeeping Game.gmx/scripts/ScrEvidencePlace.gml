// Roll a random number to determine if a piece of evidence will appear in the room
spawnCount = instance_number(ObjSpawnParent);
checkTrue = argument0;

// Determine which evidence to spawn based on the current crime
spawnMe = FuncEvidence(currentCrime);

if(room != RoomHallway)
{
    //checkTrue = irandom(25);
    
    if((checkTrue mod 5) == 0)
    {   // Check for the presence of spawn points in the room
        if(instance_exists(ObjSpawnParent))
        {
            do  // Check for an empty spawn point and place the evidence there
                spawnEvidence = instance_find(ObjSpawnParent, random(spawnCount));
            until(spawnEvidence.isOccupied == false)
        }
        
        instance_create(spawnEvidence.x, spawnEvidence.y,spawnMe);
        
        // Spawn clues into the room
        FuncClue(irandom_range(1,3));
    }
}