/*
Items
0 = sword
1 = Shirt
2 = Docs
3 = Note
4 = red potion
5 = blue potion
6 = key
*/

globalvar showInv;
showInv = true;
globalvar maxItems;
maxItems = 4;
stack = 0;


// Creates the Inventory buttons and mouseover boxes at 0,0 in the current room
// This is what is causing the current inventory problems
// Adjust to follow player, or spawn at view/port.x
for (i = 0; i < maxItems; i += 1){
    global.inventory[i] = -1;
    // Create an array of obj_invbutton with spawn coordinate 0,0
    button[i] = instance_create(0,0,obj_invbutton);
    button[i].slot = i;
}
globalvar mouseItem;
mouseItem = -1;
instance_create(0,0,obj_mouseitem);

globalvar fullInv;
fullInv = 0;
globalvar noitem;
noitem = 0;
