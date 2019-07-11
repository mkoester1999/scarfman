
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
if (vsp < MAX_GRAV) vsp += grav ;
 
if (place_meeting(x,y+1,obj_wall))
	{
		vsp = key_jump * -jumpspeed;
		side = 0;
	}


//Wall sliding and Wall Jumping
if((place_meeting(x+1,y,obj_wall) && !place_meeting(x,y+1,obj_wall) || place_meeting(x-1,y,obj_wall) && ! place_meeting(x,y+1,obj_wall)) && (key_left = -1 || key_right = 1) && alarm[3] = -1 )
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

	//grapple
if(key_grapple && instance_exists(obj_grapple) && cos(45) * distance_to_object(obj_grapple) < grappleDistance && alarm[2] = -1)
	{
		//hsp = 0;
		//vsp = 0;
		grapple_x = instance_nearest(x,y,obj_grapple).x
		grapple_y = instance_nearest(x,y,obj_grapple).y
		rope_x = x;
		rope_y = y;
		rope_angle_velocity = 0;
		rope_angle = point_direction(grapple_x, grapple_y, x, y);
		rope_length = point_distance(grapple_x, grapple_y, x, y);
		player_state = p_state.grapple
		grapple = true;
		alarm[0] = 15;
		alarm[2] = 30
		//set up inherited hsp
		hsp_in = hsp;
		vsp_in = vsp;
	}