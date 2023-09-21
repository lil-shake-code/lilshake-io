/// @description All following logic
// You can write your code in this editor
if(bw != browser_width || bh != browser_height){
    bw = browser_width;
    bh = browser_height;
    window_set_size(bw, bh);
    
    var base_width = 900;
    var aspect_ratio = 16 / 9;  // For a 16:9 aspect ratio
    var base_height = base_width / aspect_ratio;

    // Maximum and minimum scales. Adjust as needed.
    var max_scale = 1.5;  // e.g., the game won't zoom out more than 1.5 times the base dimensions
    var min_scale = 0.5;  // e.g., the game won't zoom in more than 2 times (1/0.5) the base dimensions

    // Calculate the aspect ratios for the base and the current browser
    var base_aspect = base_width / base_height;
    var current_aspect = bw / bh;

    var new_width, new_height;

    // Check if the current aspect ratio is wider than our base
    if(current_aspect > base_aspect){
        new_height = base_height;
        new_width = base_height * current_aspect;
    } else {
        new_width = base_width;
        new_height = base_width / current_aspect;
    }

    // Adjust for extreme zoom in/out
    var width_scale = new_width / base_width;
    var height_scale = new_height / base_height;

    if (width_scale > max_scale) {
        new_width = base_width * max_scale;
        new_height = new_width / current_aspect;
    } else if (width_scale < min_scale) {
        new_width = base_width * min_scale;
        new_height = new_width / current_aspect;
    }

    if (height_scale > max_scale) {
        new_height = base_height * max_scale;
        new_width = new_height * current_aspect;
    } else if (height_scale < min_scale) {
        new_height = base_height * min_scale;
        new_width = new_height * current_aspect;
    }

    view_set_wport(view_camera[0], bw);
    view_set_hport(view_camera[0], bh);
    camera_set_view_size(view_camera[0], new_width, new_height);
}



// Current camera position
var current_cx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2;
var current_cy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2;

// Desired camera position
if(follow!=noone ){
	
	if(instance_exists(follow)){
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
	}
}







