/// @description Insert description here
// You can write your code in this editor

if(health<0){
	image_alpha = lerp(image_alpha,0,0.1)
}
draw_self();
draw_sprite_ext(sGun,0,x,y,1,1,image_angle,c_white,1)
draw_healthbar(x- 30 , y + 50 , x+30,  y +45 , health , c_dkgray , c_red , c_green, true,true,true)
draw_set_color(c_white)
draw_text_transformed(x, y+65, global.username,0.17,0.17,0)
image_alpha = 1