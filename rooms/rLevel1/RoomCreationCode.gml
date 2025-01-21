global.TotalDotCount = instance_number(oDots);
global.TotalBDotCount = instance_number(oBDots);

//make grid
global.grid = mp_grid_create( 0, 0, room_width/8, room_height/8, 8, 8);
mp_grid_add_instances(global.grid, oWalls, false);


