/// @description Insert description here
// You can write your code in this editor

if(enemyHealth<=0){
	image_alpha = lerp(image_alpha,0,0.1)
	if(image_alpha<0.1){
		image_alpha=0
	}
	
}
draw_self();
draw_sprite_ext(sGun,0,x,y,1,1,image_angle,c_white,image_alpha)
draw_set_alpha(image_alpha)
draw_healthbar(x- 30 , y + 50 , x+30,  y +45 , enemyHealth , c_dkgray , c_red , c_green, true,true,true)
draw_set_alpha(1)
