// Pathing

// Add all properties to the mp grid
gridSize = 16;

moveGrid = mp_grid_create(0, 0, room_width/gridSize, room_height/gridSize, gridSize,gridSize);

mp_grid_add_instances(moveGrid, ObjBarrier, false);
mp_grid_add_instances(moveGrid, ObjBed, false);
mp_grid_add_instances(moveGrid, ObjCounter, false);
mp_grid_add_instances(moveGrid, ObjChair, false);
mp_grid_add_instances(moveGrid, ObjTable, false);
mp_grid_add_instances(moveGrid, ObjToilet, false);
mp_grid_add_instances(moveGrid, ObjNTable, false);
