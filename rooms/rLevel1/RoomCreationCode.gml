global.TotalDotCount = instance_number(oDots);
global.TotalBDotCount = instance_number(oBDots);

//make grid
global.grid = mp_grid_create( 0, 0, room_width / 2, room_height / 2, 2, 2);
mp_grid_add_instances(global.grid, oWalls, false);


