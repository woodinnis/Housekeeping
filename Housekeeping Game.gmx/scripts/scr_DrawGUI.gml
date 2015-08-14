// Draw the inventory boxes on screen

if (showInv){
    var width,height;
    width = maxItems * sprite_get_width(spr_border) + (maxItems * 8);
    height = sprite_get_height(spr_border) + 8;
    draw_set_color(c_black);
    draw_set_alpha(.8);
    draw_rectangle(8,8,width,height,0);
    draw_set_alpha(1);
    
    
    for(i = 0; i < maxItems; i += 1){
        stack = 0
        k = 0
//        if i >= maxItems*.25 then stack = 40
        if stack > 0 then k = 40*(.25*maxItems)
//        if i >= maxItems*.5 then stack = 40*2
        if stack > 40 then k = 40*(.25*maxItems)*2
//        if i >= maxItems*.75 then stack = 40*3
        if stack > 40*2 then k = 40*(.25*maxItems)*3

        // Draw the BG Sprites that light up on rollover
        draw_sprite(spr_border,0,24+(i*40)-k,24+stack)
        // Draw the foreground squares that stand out over the black BG
        button[i].x = 24+(i*40)-k
        button[i].y = 24+stack
    }
}
if fullInv = 1{
    draw_set_halign(fa_left)
    draw_set_color(c_black)
    draw_text(32,96,"Inventory is full. :(")
}
if noitem = 1{
    draw_set_halign(fa_left)
    draw_set_color(c_black)
    draw_text(32,96,"You don't have a sword :(")
}
