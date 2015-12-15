var create = argument0;
/*
*   Create the visual effect of items moving towards the inventory
*   as they are purchased
*/

var mouseX = device_mouse_x(0);
var mouseY = device_mouse_y(0);

var goto = view_xview[0];

obj1 = instance_create(mouseX, mouseY, create);

with(obj1)
{
    if(create == ObjBleach)
        move_towards_point(goto + 470, 30, 15);
    if(create == ObjTowels)
        move_towards_point(goto + 530, 30, 15);
    if(create == ObjSheets)
        move_towards_point(goto + 590, 30, 15);
}


