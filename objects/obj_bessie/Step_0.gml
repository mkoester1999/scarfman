/// @description Insert description here
// You can write your code in this editor
point = obj_scarf_man;

if(distance_to_object(point) < 300 && point.grounded == true && !collision_line(x,y,point.x,point.y,obj_wall,false,false) && alarm[0] = -1)
{
	alarm[0] = 180;
	alarm[1] = 120
	dir = sign(point.x - x)
	hsp = dir * speeds;
}

if(alarm[1] != -1)
{
	//horizontal collision
	if (place_meeting(x+hsp,y,obj_wall) )
	{
		while(!place_meeting(x+sign(hsp),y,obj_wall))
		{
			x += sign(hsp);
		
		
		}
		hsp = 0; alarm[0] = 240; 
	}
	else x += hsp;
	x+=hsp;
}

//gravity
if (vsp < 10) vsp += grav ;

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

if(dir != 0)
{
image_xscale = dir/2;
}

//death
if( y>room_height)
{
instance_destroy();
}

if(hsp != 0)
{
	image_speed = 15;
}
else 
{
	image_speed = 0; 
	image_index = 0;

}
