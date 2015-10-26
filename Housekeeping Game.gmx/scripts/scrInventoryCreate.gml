/*
*   Create the inventory system using a ds_grid
*   Create the tools container using a ds_list
*/

globalvar myInventory;
globalvar myTools;
globalvar mouseItem;
globalvar fullInv;
globalvar noitem;

var maxItems;
var maxTools;
maxItems = MAXITEMS;
maxTools = MAXTOOLS;

myInventory = ds_map_create();
myTools = ds_list_create();
