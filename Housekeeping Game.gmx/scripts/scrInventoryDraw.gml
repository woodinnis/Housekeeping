var width, height;
var maxItems, maxTools, maxWide;
var mapFirst, mapSize;

width = (MAXITEMS / 3) * INVBGSCALE;
height = (MAXITEMS / 4) * INVBGSCALE;

maxItems = MAXITEMS;
maxWide = 5;

if(isPaused)
{
    mapFirst = ds_map_find_first(myInventory);
    mapSize = ds_map_size(myInventory);
    draw_set_color(c_black);
    draw_set_alpha(.8);
    draw_rectangle(4,10,width,height,0);
    draw_set_alpha(1);

    // Lay out the inventory boxes in rows and columns
    var row = 0;
    for(i = 0; i < maxItems; i++)
    {
        for(j = 0; j < maxWide; j++)
        {
            draw_sprite_stretched(spr_border,0,j*INVSCALE+32,row*INVSCALE+32,INVSCALE,INVSCALE);
            i++;
        }
        row++;
    }
    // Display contents of inventory
    draw_set_color(c_red);
    draw_set_font(fontMessages);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    var mapRow = 0;
    for(i = 0; i < mapSize; i++)
    {
        for(j = 0; j < maxWide; j++)
        {
            if(!is_undefined(ds_map_find_value(myInventory, mapFirst)))
            {
                draw_text((j * INVSCALE + 32) + 16, (mapRow * INVSCALE + 32) + 16, string(mapFirst));
                draw_text((j * INVSCALE + 32) + 16, ((mapRow * INVSCALE + 32) + 16) + 20, ds_map_find_value(myInventory, mapFirst));
                mapFirst = ds_map_find_next(myInventory, mapFirst);
            }
            i++;
        }
        mapRow++;
    }
}
