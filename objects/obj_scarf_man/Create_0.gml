/// @Object properties

// You can write your code in this editor

hsp = 0;
vsp = 0;
moveSpeed = 1.66;
grav = .4
jumpspeed = 6;


image_xscale = 1

key_left = 0;
key_right = 0;

moveLock = true;
grounded = true;
knockback = 20;
enemy_knockback = 8;

globalvar slide;
slide = false;
health = 10;

global.slideSpeed = 1.5
slideFriction = 1.05
normalFriction = 1.5
grapple = false
point = instance_nearest(x,y,obj_grapple);