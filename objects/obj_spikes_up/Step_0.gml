/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,obj_enemy) || place_meeting(x,y,obj_enemy))
{
	inst = instance_place(x,y,obj_enemy);
	image_index = 1;
	inst.enemyHealth -=1;
	inst.x -= inst.image_xscale;
}

