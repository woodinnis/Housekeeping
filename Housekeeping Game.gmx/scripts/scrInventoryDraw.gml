var width, height;
var maxItems, maxTools, maxWide;
var mapFirst, mapSize;

width = (MAXITEMS / 3) * INVBGSCALE;
height = (MAXITEMS / 4) * INVBGSCALE;

maxItems = MAXITEMS;
maxWide = 5;
coords = ds_list_create();
boxX = 0;
boxY = 0;
if(isPaused)
{
    mapFirst = ds_map_find_first(myInventory);
    mapSize = ds_map_size(myInventory);
    drawRect();
//    draw_set_color(c_black);
//    draw_set_alpha(.8);
//    draw_rectangle(4,10,width,height,0);
//    draw_set_alpha(1);

    // Lay out the inventory boxes in rows and columns
    var row = 0;
    for(i = 0; i < maxItems; i++)
    {
        for(j = 1; j <= maxWide; j++)
        {
            box = draw_sprite_stretched(spr_border,0,j*96,160+row*96,INVSCALE,INVSCALE);
            i++;
        }
        row++;
   }
    // Display contents of inventory
    draw_set_color(c_red);
//    draw_set_font(fontMessages);
    draw_set_halign(fa_center);
//    draw_set_valign(fa_middle);
    var mapRow = 0;
    for(i = 0; i < mapSize; i++)
    {
        for(j = 1; j <= maxWide; j++)
        {
            if(!is_undefined(ds_map_find_value(myInventory, mapFirst)))
            {
                draw_text(j * 96 + 32, 160 + mapRow * 96, string(mapFirst));
                draw_text(j * 96 + 32, 180 + mapRow * 96, ds_map_find_value(myInventory, mapFirst));
                mapFirst = ds_map_find_next(myInventory, mapFirst);
            }
            i++;
        }
        mapRow++;
    }
}
