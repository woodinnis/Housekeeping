// Only spawn a new piece of evidence if none currently exists and none is on screen.
if(!instance_exists(ObjEvidenceParent))
{
    if(!ObjOverlord.drawShirt && !ObjOverlord.drawDocs && !ObjOverlord.drawNote)
    {    
        spawnMe = FuncEvidence(currentCrime)
        
        if(spawnMe != 0)
        {
            // Spawn a piece of evidence at the current mouse location
            instance_create(window_view_mouse_get_x(0),window_view_mouse_get_y(0),spawnMe);
        }
    }
}
