/// @description Drawing the death screen when deas
// You can write your code in this editor
var bw = browser_width
var bh = browser_height
if(alarm[0]=-1 and !(instance_exists(oPlayer))){

/// @description Insert description here
// You can write your code in this editor


var mx = device_mouse_x_to_gui(0)
var my = device_mouse_y_to_gui(0)
var scale = 0.5*bw/1300

draw_set_color(c_white)
draw_roundrect(bw*0.3, bh*0.15, bw*0.7 , bh*0.6, false)

draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_black)
draw_set_font(fGame)
draw_text_transformed(bw*0.5 , bh*0.25 , "You died!",  scale,scale,0)

draw_text_transformed(bw*0.5 , bh*0.35 , "You were killed by "+myKillerName,  0.5*scale,0.5*scale,0)




//Play button
draw_set_color(c_green)
draw_roundrect(bw*0.4 , bh*0.43, bw*0.6, bh*.47, false)
draw_set_color(c_white)
draw_text_transformed(bw*0.5 , bh*0.45 , "Respawn",  0.6*scale,0.6*scale,0)

if(mouse_check_button_pressed(mb_left) 
and 
point_in_rectangle(mx,my,bw*0.4 , bh*0.43, bw*0.6, bh*.47)){
	
	DisconnectFromServer()
	room_restart()
	
}

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
point_in_rectangle(mx,my,bw*0.4 , bh*0.75, bw*0.6, bh*.83)){
	
	url_open_ext("https://www.youtube.com/watch?v=-B_rsXdewfk&list=PLXxCttJDMCiuEEiXMoaP6bS1nlYeqWCWP&pp=iAQB",
	"_blank")
	
}


//github
draw_sprite_ext(sGithub,0,bw*0.5, bh*0.9,0.5*scale,0.5*scale,0,c_white,1)
if(mouse_check_button_pressed(mb_left) 
and 
point_in_circle(mx,my,bw*0.5, bh*0.9, 70*scale)){
	url_open_ext("https://github.com/lil-shake-code/lilshake-io",
	"_blank")
}




}else{
//players in this world

draw_set_halign(fa_left)
draw_set_color(c_yellow)
draw_text_transformed(bw*0.01, bh*0.015,"Players in this World : "+string(1+instance_number(oOtherPlayer)),0.2,0.2,0)
draw_text_transformed(bw*0.01, bh*0.04,"PING : "+string(global.ping)+"ms",0.2,0.2,0)

draw_set_halign(fa_center)

}

