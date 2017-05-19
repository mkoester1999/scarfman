/// @description Character functionality
// You can write your code in this editor

//Get the player's input
key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_space);
key_down = keyboard_check(vk_down);
 

//React to inputs
move = key_left + key_right;
if(!key_down || !place_meeting(x,y+1,obj_wall))hsp += move * moveSpeed;


//sliding

if(place_meeting(x,y+1,obj_wall) && key_down = true)
	{
		friction = slideFriction
		slide = true;
	}
else
	{ 
		friction = normalFriction; 
		slide = false;
	}


//friction 
hsp /=friction;


//gravity
if (vsp < 10) vsp += grav;
 
if (place_meeting(x,y+1,obj_wall))
	{
		vsp = key_jump * -jumpspeed;
	
	}

 
//Horizontal Collision
if (place_meeting(x+hsp,y,obj_wall))
{
    while(!place_meeting(x+sign(hsp),y,obj_wall))
		{
			x += sign(hsp);
		
		
		}
	hsp = 0;
}
x += hsp;
 
//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall))
{
    while(!place_meeting(x,y+sign(vsp),obj_wall))
		{
			y += sign(vsp);
		}
    vsp = 0;
}
y += vsp;


//image flipping
if (key_left = -1 && !key_down)
	{
		image_xscale = -1
	
	}
	
if (key_right = 1)
	{
		image_xscale = 1
	
	}

//Sprite Changing
if(key_down && place_meeting(x,y+1,obj_wall))
	{
		sprite_index = spr_scarf_man_slide;
	
	}

else if(key_left = -1)|| (key_right = 1)
	{
		sprite_index = spr_scarf_man_run;
		image_angle = 0;
	}
 
	

	
else if (!key_down  || !key_left || !key_right)
	{
		sprite_index = spr_scarf_man_idle;
		image_angle = 0;	
	}

//Wall Jumping
if(place_meeting(x+1,y,obj_wall) && key_jump)
	{
		vsp = key_jump * -jumpspeed;
		moveLock = false;
	
		hsp = -knockback;
		moveLock = true;
	
	}
	


	
if(place_meeting(x-1,y,obj_wall) && key_jump)
	{
		vsp = key_jump * -jumpspeed;
	
	
		hsp = knockback;
	
	
	}


if(place_meeting(x,y,obj_enemy) && alarm[0] = -1)
	{
		inst = place_meeting(x,y,obj_enemy)
		if(slide = false) || (slide && hsp < global.slideSpeed && hsp > (-1)*global.slideSpeed ) 
		{
		
			health -=1;
			alarm[0] = 60;
		
		
		
		
		}
		else  
		{
			
			hsp += -sign(hsp) * enemy_knockback;
			//other.scr_die();
		}		
		
		
	}
	
	
	
	
//can't leave room

if(x > room_width)	
	{
		x = room_width;
	}
	
if (x < 0)
	{
		x = 0
	}
	
if (y > room_height)
	{
		ScarfDie();
	}
	
	//death
	if(health <=0)
	{
	ScarfDie();
	}
	
	
	//parallax
	
var cam_x = camera_get_view_x(view_camera[0]);
layer_x("Background", cam_x * .5);

	
