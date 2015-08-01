// Set internal variables
messCount = argument0;
spawnCount = instance_number(ObjSpawnPt);
// Randomly generate the number of ObjMess objects to be distributed in the room
    
// Using messCount, begin to loop until all ObjMess are distributed
for(i = 0; i < messCount; i++)
{
    // Select an unoccupied spawn point
    if(instance_exists(ObjSpawnPt))
    {
        do
            spawnMess = instance_find(ObjSpawnPt, irandom(spawnCount));
        until(spawnMess != noone && spawnMess.isOccupied == false)
    }
    
    // Pick a 0-3 random number to determine the ObjMess to be placed                   
    mess = random(3);
    messVar = string(irandom_range(1,6));
    
    // Place the random Mess Object at the x,y coordinates of the selected unoccupied spawn point
    if(mess <= 1)
    {
         instance_create(spawnMess.x,spawnMess.y,ObjMessLg);
         ObjOverlord.messType = "MessLg" + messVar;
    }
    else if(mess <= 2)
    {
         instance_create(spawnMess.x,spawnMess.y,ObjMessMd);
         ObjOverlord.messType = "MessMd" + messVar;
    }
    else
    {
         instance_create(spawnMess.x,spawnMess.y,ObjMessSm);
         ObjOverlord.messType = "MessSm" + messVar;
    }
    
    // Set the spawn point as occupied
    spawnMess.isOccupied = true;
}
