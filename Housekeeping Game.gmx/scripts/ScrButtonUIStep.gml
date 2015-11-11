/*
*   UI step actions to handle button interactions
*/

if(btnYes != "")
{
    var btn = asset_get_index(btnYes);
    
    x1 = btn.x - sprite_get_bbox_left(btn);
    x2 = btn.x + sprite_get_bbox_right(btn);
    y1 = btn.y - sprite_get_bbox_top(btn);
    y2 = btn.y + sprite_get_bbox_bottom(btn);
    
    draw_set_colour(c_red);
    draw_rectangle(x1,y1,x2,y2,false);

    show_debug_message(y1);
                
    if(point_in_rectangle(device_mouse_x(0),device_mouse_y(0), x1,y1,x2,y2))
    {
        show_debug_message("BUTTON!");
    }
}/*
else

        show_debug_message("waka");
