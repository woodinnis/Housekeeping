/*
*   Check the missionList to see if the Key Object of each mission has been found
*   If not, spawn the key Object on one of the available spawn points
*
*   Check the spawn point before creating an instance to see if it is already occupied
*   Mark the spawn point as occupied after instance creation
*/

// Retrieve missionList
n = ds_list_size(missionList);

for(i = 0; i < n; i++)
{
    m = missionList[| i];
    if(!m[? "Key Object"])  // Check if Key Object has been found
    {
        o = asset_get_index(m[? "Object"]);     // Determine index of Object
        
        if(!instance_exists(o))     // Check if an instance already exists
        {
            if(!isOccupied)     // Check if spawn point is occupied
            {
                instance_create(x,y,o);
                isOccupied = true;  // Mark spawn point as occupied
            }
        }
    }
}
