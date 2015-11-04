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
quest002[? "Name"] = NPC002;
quest002[? "Started"] = false;
quest002[? "Complete"] = false;
quest002[? "Key Object"] = false;

if(ds_exists(missionList,ds_type_list))
{
    missionList[| 0] = quest001;
    missionList[| 1] = quest002;
}
