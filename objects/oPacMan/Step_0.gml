// Define the grid size
var grid_size = 8;

// Get Pac-Man's current grid cell
var grid_x = floor(x / grid_size);
var grid_y = floor(y / grid_size);

// Calculate the target cell to the right
var target_grid_x = grid_x + 1;
var target_grid_y = grid_y;

// Check if the target cell is free
if (!mp_grid_get_cell(global.grid, target_grid_x, target_grid_y)) {
    // Move Pac-Man to the target position in the grid
    x = target_grid_x * grid_size;
    y = target_grid_y * grid_size;
	show_debug_message("move too x : " + string(x) + " y : " + string(y));
    
	// Update sprite and direction if necessary
    sprite_index = pac_right;
}