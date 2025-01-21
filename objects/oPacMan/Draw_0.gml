// Draw the sprite
draw_self();

// Draw the rectangle (use a unique color for clarity)
draw_set_color(c_blue);
draw_set_alpha(0.5); // Semi-transparent for visibility
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);