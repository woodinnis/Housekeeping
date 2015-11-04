/*
*   When touching player, stop moving
*
*   When touching player, check which Mission the NPC is a part of,
*   and adjust the status of the mission.
*/

if(position_meeting(x,y,ObjPlayerParent))
{
    path_speed = 0;     // Stop moving
}
else
{
    path_speed = 2;
}

if(NPCMet)
{
    if(!place_meeting(x,y,ObjPlayerParent))
    {    
        n = ds_list_size(missionList);
    
        // Seach missionList for current NPC name
        for(i = 0; i < n; i++)
        {
            m = ds_map_find_value(missionList[| i], "Name");
            if(m == NPCName)
            {
                m = missionList[| i];
                break;
            }
        }
        
        // Set mission status started
        m[? "Started"] = true;
    }    
}
