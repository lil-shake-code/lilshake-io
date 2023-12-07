/// @description Insert description here
// You can write your code in this editor
var bw = browser_width
var bh = browser_height
var scale = 0.5*bw/1300

draw_set_color(c_white)
draw_roundrect(bw*0.3, bh*0.15, bw*0.7 , bh*0.6, false)

draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_black)
draw_set_font(fGame)
draw_text_transformed(bw*0.5 , bh*0.25 , "soulwars.io",  scale,scale,0)

draw_text_transformed(bw*0.5 , bh*0.35 , "Enter your name",  0.5*scale,0.5*scale,0)

draw_text_transformed(bw*0.5 , bh*0.45 , keyboard_string,  0.6*scale,0.6*scale,0)


//Play button
draw_set_color(c_green)
draw_roundrect(bw*0.45 , bh*0.51, bw*0.55, bh*.59, false)
draw_set_color(c_white)
draw_text_transformed(bw*0.5 , bh*0.55 , "PLAY",  0.6*scale,0.6*scale,0)

if(mouse_check_button_pressed(mb_left) 
and 
point_in_rectangle(mouse_x,mouse_y,bw*0.45 , bh*0.51, bw*0.55, bh*.59)){
	
	global.username = keyboard_string
	room_goto(rGame)
	
}



//created in gamemaker and rocket networking
draw_set_color(c_white)
draw_text_transformed(bw*0.5 , bh*0.65 , "Created with Gamemaker and Rocket Networking",  0.5*scale,0.5*scale,0)
draw_text_transformed(bw*0.5 , bh*0.70 , "in less than 24 hours",  0.5*scale,0.5*scale,0)

//youtube plug
var alpha = abs(sin(current_time*0.002))
draw_set_alpha(alpha)
draw_set_color(c_red)
draw_roundrect(bw*0.4 , bh*0.75, bw*0.6, bh*.83, false)
draw_set_alpha(1)

draw_set_color(c_black)
draw_text_transformed(bw*0.5 , bh*0.79 , "YouTube Tutorial",  0.5*scale,0.5*scale,0)
if(mouse_check_button_pressed(mb_left) 
and 
point_in_rectangle(mouse_x,mouse_y,bw*0.4 , bh*0.75, bw*0.6, bh*.83)){
	
	url_open_ext("https://www.youtube.com/watch?v=-B_rsXdewfk&list=PLXxCttJDMCiuEEiXMoaP6bS1nlYeqWCWP&pp=iAQB",
	"_blank")
	
}


//github
draw_sprite_ext(sGithub,0,bw*0.5, bh*0.9,0.5*scale,0.5*scale,0,c_white,1)
if(mouse_check_button_pressed(mb_left) 
and 
point_in_circle(mouse_x,mouse_y,bw*0.5, bh*0.9, 70*scale)){
	url_open_ext("https://github.com/lil-shake-code/lilshake-io",
	"_blank")
}



