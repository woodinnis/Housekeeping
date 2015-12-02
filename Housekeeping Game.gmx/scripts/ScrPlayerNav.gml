// MP Grid-based navigation system
if(room = RoomMain)
{
    walkMe = path_add();
    mX = device_mouse_x(0);
    mY = device_mouse_y(0);
    goodPath = mp_grid_path(ObjMpGrid.moveGrid, walkMe, x, y, mX, mY , true)
    //if(mp_grid_path(ObjMpGrid.moveGrid, walkMe, x, y, mX, mY , true))
    if(goodPath)
    {
        path_start(walkMe, moveSpeed, path_action_stop, true);
    }
}
