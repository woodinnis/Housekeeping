// MP Grid-based navigation system

walkMe = path_add();
mX = device_mouse_x(0);
mY = device_mouse_y(0);
mp_grid_path(ObjMpGrid.moveGrid, walkMe, x, y, mX, mY , true);
path_start(walkMe, moveSpeed, path_action_stop, true);
