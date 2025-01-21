path_delete(path);
path = path_add();

var targetX = oPacMan.x;
var targetY = oPacMan.y;

if(mp_grid_path(global.grid, path, x, y, targetX, targetY, false)) {
	path_start(path, 0.5, path_action_stop, true);	
} else {
	show_debug_message("no path found");	
}

// loop
alarm_set(0,120);