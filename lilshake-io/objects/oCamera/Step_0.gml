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


var cx = follow.x - view_get_wport(view_camera[0])/2
var cy = follow.y - view_get_hport(view_camera[0])/2
	
camera_set_view_pos(view_camera[0], cx, cy)
