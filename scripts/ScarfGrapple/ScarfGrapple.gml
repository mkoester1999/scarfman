point = argument0;

/*y --;
v = 10;
h = 50;

disp = distance_to_object(point);

*/
//TODO: this if statement is causing issues when there is a block betwen player and grapple.
//change it so it only checks once
if(!collision_line(x,y,point.x,point.y,obj_wall,false,false))
{
	//hsp = sign(point.x-self.x) * cos(45) * disp;
	//vsp = sign(point.y - self.y) * sin(45) * disp /sprite_height   ;
	var rope_angle_acceleration = -0.2 * dcos(rope_angle);
	rope_angle_acceleration += (key_right + key_left) * 0.08;
	rope_angle_velocity += rope_angle_acceleration;
	rope_angle += rope_angle_velocity;
	//dampener to slowly stop
	rope_angle_velocity *= 0.99;
	
	rope_x = grapple_x + lengthdir_x(rope_length, rope_angle);
	rope_y = grapple_y + lengthdir_y(rope_length, rope_angle);
	
	
	hsp = rope_x - x + hsp_in;
	vsp = rope_y - y + vsp_in;
	hsp_in*=.99;
	vsp_in*=.99;
	
	//TODO: change so hsp and vsp only equal rope x  and rope y when angle is between 180 and 360
	//also add gravity if it is not between those angles
	
}

if(key_grapple)
{
	player_state = p_state.normal	
}

 

