/*
*   Remove an item from the player's inventory
*/

// The item to be removed is passed as an argument
var killItem = argument[0];
var killValue = argument[1];
var oldValue = 0;

// Remove item from inventory

if(is_real(killValue))
{
    if(ds_map_exists(myInventory, killItem))
    {
        oldValue = ds_map_find_value(myInventory, killItem);
        n = oldValue - killValue;
        ds_map_replace(myInventory, killItem, n);
    }
}
else
    ds_map_delete(myInventory,killItem)
