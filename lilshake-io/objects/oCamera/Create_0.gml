/// @description Insert description here
// You can write your code in this editor
follow = oPlayer

bw = browser_width
bh = browser_height


window_set_size(bw,bh)
window_center()

view_set_wport(view_camera[0], bw);
	view_set_hport(view_camera[0], bh);
	
	var base_width = 1200;
	
	camera_set_view_size(view_camera[0], base_width, base_width*bh/bw )
	