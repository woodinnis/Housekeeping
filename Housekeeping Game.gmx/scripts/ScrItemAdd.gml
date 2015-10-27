/*
*   Manages new items coming in to the player's inventory
*/

// The item name and its quantity or description are passed as
// arguments
var newItem = argument0;
var newValue = argument1;
var oldValue = 0;

//for (i = 0; i < MAXITEMS; i++)
{
    // Check to see if the new item has a quantity
    if(is_real(newValue))
    {
        // Does the item already have an entry
        if(ds_map_exists(myInventory, newItem))
        {
            // Increment
            oldValue = ds_map_find_value(myInventory, newItem);
            n = oldValue + newValue;
            ds_map_replace(myInventory, newItem, n);
        }
        // Add a new entry
        else
            ds_map_add(myInventory, newItem, newValue);
    }
    // Add a new entry
    else
        ds_map_add(myInventory, newItem, newValue);
}
