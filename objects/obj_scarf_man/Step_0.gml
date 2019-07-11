/// @description Character functionality
// You can write your code in this editor

//Get the player's input
key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_up);
key_down = keyboard_check(vk_down);
key_grapple = keyboard_check_pressed(ord("X")) ;
 
//TODO: set up state machines
/*
in what state machine:
normal: reacting to inputs, gravity, wall jumping & sliding
grapple: grapple code, mostly handled in script that is called. 
TODO: Move code to scripts
*/

switch(player_state)
{
	case p_state.normal:
	{
		scarfNormal()
	}break;
	
	case p_state.grapple:
	{
		ScarfGrapple(instance_nearest(x,y,obj_grapple));
	}break;
}

 
//Horizontal Collision
if (place_meeting(x+hsp,y,obj_wall))
{
    while(!place_meeting(x+sign(hsp),y,obj_wall))
		{
			x += sign(hsp);
		
		
		}
	if(player_state = p_state.grapple)
	{
		rope_angle = point_direction(grapple_x,grapple_y,x,y)
		rope_angle_velocity = 0;
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
	if(player_state = p_state.grapple)
	{
		rope_angle = point_direction(grapple_x,grapple_y,x,y)
		rope_angle_velocity = 0;
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
	
if (key_right = 1 && ! key_down)
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






//enemy encounter
if(place_meeting(x,y,obj_enemy) && alarm[0] = -1)
	{
		inst = instance_place(x,y,obj_enemy)
		if(slide = false) || (slide && hsp < global.slideSpeed && hsp > (-1)*global.slideSpeed ) 
		{
		
			health -=1;
			alarm[0] = 60;
		
		
		
		
		}
		else  
		{
			if(alarm[5] = -1)
			{
			inst.enemyHealth -= damage;
			alarm[5] = 3
			}
			
			
			hsp += -sign(hsp) * enemy_knockback;
		
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
	
	
	





//grounded
if(place_meeting(x,y+1,obj_wall))
{
grounded = true;
alarm[3] = 15
}
else grounded = false;


//spike damage
if(place_meeting(x + image_xscale,y,obj_spikes) && (hsp >= 3 || hsp <= -3))
{
	health -= 5;
	hsp -= image_xscale * 5;
}

//vertical spike damage
if(place_meeting(x,y + vsp,obj_spikes_up) && (vsp >= 3 || vsp <= -3))
{
	health = 0;;
	vsp -= image_xscale * 5;
}