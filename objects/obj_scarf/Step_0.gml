/// @description Insert description here
// You can write your code in this editor
x = obj_scarf_man.x;


image_xscale = obj_scarf_man.image_xscale;

if(obj_scarf_man.grapple = true)
{
	sprite_index = spr_blank_scarf;
}

else if(obj_scarf_man.grounded = false && obj_scarf_man.grapple = false && obj_scarf_man.vsp <0) 
{
	sprite_index = spr_scarf_jump;
}

else if(obj_scarf_man.grounded = false && obj_scarf_man.grapple = false && obj_scarf_man.vsp > 1) 
{
	sprite_index = spr_scarf_fall;
}

else sprite_index = spr_scarf;

if(slide = true)
{
	y = obj_scarf_man.y + 1;
}
else y = obj_scarf_man.y;



