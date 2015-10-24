var width, height;
var maxItems, maxTools;
var mapFirst, mapSize;
width = (MAXITEMS / 3) * INVSCALE;
height = (MAXITEMS / 4) * INVSCALE;

maxItems = MAXITEMS;
if(isPaused)
{
    mapFirst = ds_map_find_first(myInventory);
    mapSize = ds_map_size(myInventory);
    draw_set_color(c_black);
    draw_set_alpha(.8);
    draw_rectangle(4,10,width,height,0);
    draw_set_alpha(1);

    // Lay out the inventory boxes in rows and columns
    for(i = 0; i < 2; i++)
    {
        for(j = 0; j < 1; j++)
        {
            draw_sprite_stretched(spr_border,0,(j+0)*INVSCALE+32,(i+0)*INVSCALE+32,INVSCALE,INVSCALE)//+stack)
        }
    }
    // Display contents of inventory
    draw_set_color(c_red);
    draw_set_font(fontMessages);
    for(i = 0; i < mapSize; i++)
    {
        draw_text(100, 50 * (i + 1), string(mapFirst));
        draw_text(100, 100 * (i + 1), ds_map_find_value(myInventory, mapFirst));
        mapFirst = ds_map_find_next(myInventory, mapFirst);
    }
}
