/* 
*   Critical mission/quest details built with a ds_List/Map set.
*
*   Each mission's details are placed into a map, which is then entered into a list for
*   later use.   
*/

quest001 = ds_map_create();
quest001[? "Name"] = NPC001;
quest001[? "Started"] = false;
quest001[? "Complete"] = false;
quest001[? "Key Object"] = false;

quest002 = ds_map_create(); 
quest002[? "Name"] = NPC003;
quest002[? "Started"] = false;
quest002[? "Complete"] = false;
quest002[? "Key Object"] = false;

quest003 = ds_map_create();
quest003[? "Name"] = NPC006;
quest003[? "Started"] = false;
quest003[? "Complete"] = false;
quest003[? "Key Object"] = false;

quest004 = ds_map_create(); 
quest004[? "Name"] = NPC008;
quest004[? "Started"] = false;
quest004[? "Complete"] = false;
quest004[? "Key Object"] = false;

quest005 = ds_map_create();
quest005[? "Name"] = NPC009;
quest005[? "Started"] = false;
quest005[? "Complete"] = false;
quest005[? "Key Object"] = false;

quest006 = ds_map_create(); 
quest006[? "Name"] = NPC010;
quest006[? "Started"] = false;
quest006[? "Complete"] = false;
quest006[? "Key Object"] = false;

if(ds_exists(missionList,ds_type_list))
{
    missionList[| 0] = quest001;
    missionList[| 1] = quest002;
    missionList[| 2] = quest003;
    missionList[| 3] = quest004;
    missionList[| 4] = quest005;
    missionList[| 5] = quest006;
}
