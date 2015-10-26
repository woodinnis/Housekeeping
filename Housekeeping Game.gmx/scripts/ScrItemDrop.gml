/*
*   Remove an item from the player's inventory
*/

// The item to be removed is passed as an argument
var killItem = argument0;

// Remove item from inventory
ds_map_delete(myInventory,killItem)
