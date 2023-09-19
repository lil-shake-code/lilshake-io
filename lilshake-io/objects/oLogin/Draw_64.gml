/// @description Insert description here
// You can write your code in this editor
var bw = browser_width
var bh = browser_height
var scale = 0.5*bw/1300


draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_white)
draw_set_font(fGame)
draw_text_transformed(bw*0.5 , bh*0.4 , "lilshake.io",  scale,scale,0)

draw_text_transformed(bw*0.5 , bh*0.5 , "Enter your name",  0.5*scale,0.5*scale,0)

draw_text_transformed(bw*0.5 , bh*0.6 , keyboard_string,  0.6*scale,0.6*scale,0)


//Play button
draw_set_color(c_green)
draw_roundrect(bw*0.45 , bh*0.66, bw*0.55, bh*.74, false)
draw_set_color(c_white)
draw_text_transformed(bw*0.5 , bh*0.7 , "PLAY",  0.6*scale,0.6*scale,0)

if(mouse_check_button_pressed(mb_left) 
and 
point_in_rectangle(mouse_x,mouse_y,bw*0.45 , bh*0.66, bw*0.55, bh*.74)){
	
	room_goto(rGame)
	
}
