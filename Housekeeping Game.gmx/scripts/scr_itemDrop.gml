for (i = 0; i < maxItems; i += 1){
    if (global.inventory[i] == argument0){//slot has the item
        global.inventory[i] = -1;//set slot empty
        return(1);//end script
    }   
}
return(0);