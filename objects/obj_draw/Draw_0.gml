/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_red);

if(instance_exists(obj_scarf_man.point) && obj_scarf_man.grapple = true)
{
	draw_line_width(obj_scarf_man.x + sign(image_xscale) * 3,obj_scarf_man.y - 3,obj_scarf_man.point.x,obj_scarf_man.point.y,1);
}

if(obj_scarf_man.grapple = false)
{
	//draw_sprite_stretched(spr_scarf,-1,obj_scarf_man.x,obj_scarf_man.y,obj_scarf_man.image_xscale,1);
}


