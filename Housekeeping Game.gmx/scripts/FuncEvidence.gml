// Set internal variables
myCrime = argument0;

clueData = "";

if(ds_exists(clueData,ds_type_grid))
{
    // Scan the clueData ds_grid for the correct CRIME entry
    crime = clueData[# myCrime, CRIME];
    
    // Scan the clueData ds_grid to see which piece of evidence should be spawned
    switch(crime)
    {
        case CRIME000:
        {
            spawnMe = asset_get_index(clueData[# CRIME000, EVIDENCE]);
            break;
        }
        case CRIME001:
        {
            spawnMe = asset_get_index(clueData[# CRIME001, EVIDENCE]);
            break;
        }
        case CRIME002:
        {
            spawnMe = asset_get_index(clueData[# CRIME002, EVIDENCE]);
            break;
        }
        case CRIME003:
        {
            spawnMe = asset_get_index(clueData[# CRIME003, EVIDENCE]);
            break;
        }
        default:
        {
            spawnMe = asset_get_index(clueData[# CRIME000, EVIDENCE]);
            break;
        }
    }
}
else
{
    crime = CRIME000;  // For the sake of testing this is left at 0;
    
    switch(crime)
    {
        case CRIME000:
        {   
            // No Shirt, No Docs, No Note
            if(!ObjOverlord.shirtFound && !ObjOverlord.docsFound && !ObjOverlord.noteFound)
                spawnMe = choose(ObjEvidenceShirt, ObjEvidenceDocs, ObjEvidenceNote);
            // No Shirt, No Docs, Note
            else if(!ObjOverlord.shirtFound && !ObjOverlord.docsFound && ObjOverlord.noteFound)
                spawnMe = choose(ObjEvidenceShirt, ObjEvidenceDocs);
            // No Shirt, Docs, No Note
            else if(!ObjOverlord.shirtFound && ObjOverlord.docsFound && !ObjOverlord.noteFound)
                spawnMe = choose(ObjEvidenceShirt, ObjEvidenceNote);
            // Shirt, No Docs, No Note
            else if(ObjOverlord.shirtFound && !ObjOverlord.docsFound && !ObjOverlord.noteFound)
                spawnMe = choose(ObjEvidenceDocs, ObjEvidenceNote);
            // No Shirt, Docs, Note
            else if(!ObjOverlord.shirtFound && ObjOverlord.docsFound && ObjOverlord.noteFound)
                spawnMe = ObjEvidenceShirt;
            // Shirt, No Docs, Note
            else if(ObjOverlord.shirtFound && !ObjOverlord.docsFound && ObjOverlord.noteFound)
                spawnMe = ObjEvidenceDocs;
            // Shirt, Docs, No Note
            else if(ObjOverlord.shirtFound && ObjOverlord.docsFound && !ObjOverlord.noteFound)
                spawnMe = ObjEvidenceNote; 
        }
        case CRIME001:
        case CRIME002:
        case CRIME003:
        default:
            break;
    }
}
// Return the correct spawn value to the calling function
return spawnMe;