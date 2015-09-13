// Only change properties if object is within line-of-sight
if(!collision_line(x, y,ObjPlayerRoom.x,ObjPlayerRoom.y,ObjBarrier, false,true))
{
    // Set the object to clean
    image_index = 0;
    
    // Place evidence
    evidenceGet = irandom(EVIDENCERANDOM);
    if((evidenceGet mod 5) == 0)
        ScrEvidencePlace();
}
