/// @description Character functionality
// You can write your code in this editor

//Get the player's input
key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
key_jump = keyboard_check_pressed(ord("Z"));
key_down = keyboard_check(vk_down);
key_grapple = keyboard_check_pressed(ord("X")) ;
 

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
if (vsp < 10) vsp += grav ;
 
if (place_meeting(x,y+1,obj_wall))
	{
		vsp = key_jump * -jumpspeed;
		side = 0;
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
	side = 0;
	
	
}

y += vsp;


//image flipping
if (key_left = -1 && !key_down)
	{
		image_xscale = -1;
	
	}
	
if (key_right = 1)
	{
		image_xscale = 1;
	
	}

//Sprite Changing
if(key_down && grounded)
	{
		sprite_index = spr_scarf_man_slide;
	
	}

else if((key_left = -1 || key_right = 1) && deccel = 1)
	{
		sprite_index = spr_scarf_man_run;
		image_angle = 0;
	}
 
	

	
else if ((!key_down  || !key_left || !key_right) && deccel = 1)
	{
		sprite_index = spr_scarf_man_idle;
		image_angle = 0;	
	}


//Wall sliding and Wall Jumping
if((place_meeting(x+1,y,obj_wall) && !place_meeting(x,y+1,obj_wall) || place_meeting(x-1,y,obj_wall) && ! place_meeting(x,y+1,obj_wall)) && (key_left = -1 || key_right = 1) )
{
	

	DustParticles();
	deccel = deccelAmount;
	alarm[1] = 60;
	sprite_index = spr_scarf_man_wall_slide;
	
	if(key_jump && image_xscale  = 1 && side != image_xscale && grounded != true)
	{
		vsp = key_jump * -jumpspeed *deccel;
		moveLock = false;
	
		hsp = -knockback;
		moveLock = true;
		side = image_xscale;
	
	}
	


	
	if(key_jump && image_xscale = -1 && side != image_xscale && grounded != true)
	{
		vsp = key_jump * -jumpspeed * deccel;
	
	
		hsp = knockback;
		side = image_xscale;
	
	}
		
	 vsp /= deccel;
	
	
}
else deccel = 1;




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
			//instance_destroy(inst);
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

	if(keyboard_check(vk_escape))
	{
		game_end();
	}
	
	
	
	//grapple
if(key_grapple && instance_exists(obj_grapple) && cos(45) * distance_to_object(obj_grapple) < grappleDistance && alarm[2] = -1)
	{
		ScarfGrapple(instance_nearest(x,y,obj_grapple));
		grapple = true;
		alarm[0] = 15;
		alarm[2] = 30
	}




//grounded
if(place_meeting(x,y+1,obj_wall))
{
grounded = true;
}
else grounded = false;