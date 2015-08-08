// Set internal variables
myCrime = argument0;

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

// Return the correct spawn value to the calling function
return spawnMe;
