/// @description Insert description here
// You can write your code in this editor
var vmove = -keyboard_check(ord("W")) +  keyboard_check(ord("S"));
var hmove = keyboard_check(ord("D")) -  keyboard_check(ord("A"));

vmove*=3+3*keyboard_check(vk_shift)
hmove*=3+3*keyboard_check(vk_shift)


//Collisison code
if(!place_meeting(x+ hmove, y+vmove,oWall)){
	x += hmove 
	y += vmove 
	
}
var new_angle = point_direction(x, y, mouse_x, mouse_y);
var will_collide = false;

// Rotate each point of the sprite's bounding box around the sprite's center
for (var i = 0; i < 360; i += 45) {
    var len = sprite_get_width(sprite_index) / 2;
    var new_x = x + lengthdir_x(len, i + new_angle);
    var new_y = y + lengthdir_y(len, i + new_angle);

    // If any point would collide with a wall, set will_collide to true
    if (place_meeting(new_x, new_y, oWall)) {
        will_collide = true;
        break;
    }
}

// Only allow rotation if the sprite wouldn't collide with a wall
if (!will_collide) {
    image_angle = new_angle;
}




//shooting
if (mouse_check_button_pressed(mb_left)){
	repeat(3){
		var bullet = instance_create_layer(
		x + lengthdir_x(40,image_angle-45),
		y + lengthdir_y(40,image_angle -45)
		,"Instances",oMyEntity)
		bullet.image_angle = image_angle
		bullet.direction = image_angle + irandom_range(-10,10)
		bullet.speed = 15
	}
	
}


//MULTIPLAYER
global.sharedProperties = {
	_x :x,
	_y: y,
	_A : image_angle,
	_H: health
}




