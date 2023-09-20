var bw = browser_width
var bh = browser_height
window_set_size(bw,bh)
	
	
view_set_wport(view_camera[0], bw);
view_set_hport(view_camera[0], bh);
	
var base_width = bw;
	
camera_set_view_size(view_camera[0], base_width, base_width*bh/bw )


if(string_length(keyboard_string) > 10 ){
	keyboard_string = string_delete(keyboard_string, 10, 1)
}