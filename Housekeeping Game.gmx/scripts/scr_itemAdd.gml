for (i = 0; i < maxItems; i += 1){
    if (global.inventory[i] == -1){//slot "i" is empty
        global.inventory[i] = argument0;//argument0 = item entering Inventory
        return(1);//end script
    }   
}
return(0);
