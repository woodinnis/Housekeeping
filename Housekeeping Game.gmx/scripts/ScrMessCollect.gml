
ObjOverlord.messCollected = true; // Set to true if this is the first ObjMess collected
ObjOverlord.messNum += 1;         // Increment by 1

// Destroy the objMess
with(other)
{
    instance_destroy(); 
}
