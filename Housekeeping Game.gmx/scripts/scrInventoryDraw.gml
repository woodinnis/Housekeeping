/*
*   Draw the default backsplash, and inventory grid
*
*   Draw the current inventory on the inventory grid
*/

var maxItems, maxWide;
var mapFirst, mapSize;

maxItems = MAXITEMS;
maxWide = 5;

xyOffset = 96;
itemOffset = 198;

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
            box = draw_sprite_stretched(spr_border,0,j*xyOffset,160+row*xyOffset,INVSCALE,INVSCALE);
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
                me = ds_map_find_value(myInventory, mapFirst)
                
                if(!is_real(me))
                {
                    switch(me)
                    {
                        case JEWELVAL:
                        {
                            draw_sprite(MessSm5,0,j * xyOffset + 32, itemOffset + mapRow * xyOffset);
                            break
                        }
                        case LAPTOPVAL:
                        {
                            draw_sprite(SprEvidenceLaptop,0,j * xyOffset + 32, itemOffset + mapRow * xyOffset);
                            break;
                        }
                        case DOC1:
                        case DOC2:
                        case DOC3:
                        {
                            draw_sprite(SprDocument,0,j * xyOffset + 32, itemOffset + mapRow * xyOffset);
                            break;
                        }
                        case LET1:
                        case LET2:
                        case LET3:
                        {
                            draw_sprite(SprLetter,0,j * xyOffset + 32, itemOffset + mapRow * xyOffset);
                            break;   
                        }
                        default:
                        {
                            break;
                        }
                    }   // switch(me)
                }   // if(!is_real(me)
//                draw_text(j * xyOffset + 32, 160 + mapRow * 96, string(mapFirst));
//                draw_text(j * 96 + 32, itemOffset + mapRow * 96, ds_map_find_value(myInventory, mapFirst));
                mapFirst = ds_map_find_next(myInventory, mapFirst);
            }
            i++;
        }
        mapRow++;
    }
}
