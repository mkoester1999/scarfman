point = argument0;

y --;
v = 10;
h = 50;

disp = distance_to_object(point);


if(!collision_line(x,y,point.x,point.y,obj_wall,false,false) && point.y < y)
{
	hsp = sign(point.x-self.x) * cos(45) * disp;
	vsp = sign(point.y - self.y) * sin(45) * disp /sprite_height   ;
	
		
	
	
	
}




 

