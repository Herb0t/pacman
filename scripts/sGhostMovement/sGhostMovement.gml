function GhostMovement(ghost) {
	var path = path_add();
	var targetX = oPacMan.x;
	var targetY = oPacMan.y;
		
	if (mp_grid_path(global.grid, path, ghost.x, ghost.y, targetX, targetY, false)) {
		path_start(path, 2, path_action_stop, true);
		show_debug_message("path found");
	} else {
		show_debug_message("no path found");
		path_delete(path);
	}
}