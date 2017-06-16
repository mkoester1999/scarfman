/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_red);

if(instance_exists(obj_scarf_man.point))
{
draw_line_width(obj_scarf_man.x,obj_scarf_man.y - 3,obj_scarf_man.point.x,obj_scarf_man.point.y,1);
}
