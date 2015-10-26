/*
*   Add a new item to the player's inventory
*/

// The item name and its quantity or description are passed as
// arguments
var newItem = argument0;
var newValue = argument1;

for (i = 0; i < MAXITEMS; i++)
{
    // Add the new item to inventory
    ds_map_add(myInventory, argument0, argument1);
}
