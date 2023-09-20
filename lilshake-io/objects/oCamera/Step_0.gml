/// @description Insert description here
// You can write your code in this editor
if(bw!= browser_width or bh!= browser_height){
	bw = browser_width
	bh = browser_height
	window_set_size(bw,bh)
	
	
	view_set_wport(view_camera[0], bw);
	view_set_hport(view_camera[0], bh);
	
	var base_width = 1200;
	
	camera_set_view_size(view_camera[0], base_width, base_width*bh/bw )
	
	
}


// Current camera position
var current_cx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2;
var current_cy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2;

// Desired camera position
var target_cx = follow.x;
var target_cy = follow.y;

// Calculate new camera position using lerp
var new_cx = lerp(current_cx, target_cx, 0.1);
var new_cy = lerp(current_cy, target_cy, 0.1);

// Adjust for camera view corner
new_cx -= camera_get_view_width(view_camera[0])/2;
new_cy -= camera_get_view_height(view_camera[0])/2;

// Set the new camera position
camera_set_view_pos(view_camera[0], new_cx, new_cy);

