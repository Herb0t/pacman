// Define the grid size (e.g., 32x32)
var grid_size = 2;

// Snap the player's position to the grid to avoid offsets
x = floor(x / grid_size) * grid_size;
y = floor(y / grid_size) * grid_size;

// Set movement variables
var move_x = 0;
var move_y = 0;

// Handle keyboard inputs
if (keyboard_check_pressed(vk_right)) {
    move_x = grid_size;
    sprite_index = pac_right;
    direction = 0;
} else if (keyboard_check_pressed(vk_left)) {
    move_x = -grid_size;
    sprite_index = pac_left;
    direction = 180;
} else if (keyboard_check_pressed(vk_up)) {
    move_y = -grid_size;
    sprite_index = pac_up;
    direction = 90;
} else if (keyboard_check_pressed(vk_down)) {
    move_y = grid_size;
    sprite_index = pac_down;
    direction = 270;
}

// Check if the next position is valid
var new_x = x + move_x;
var new_y = y + move_y;

if (!place_meeting(new_x, new_y, oWalls)) {
    // Move to the new grid position
    x = new_x;
    y = new_y;
}