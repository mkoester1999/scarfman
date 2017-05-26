/// @description Insert description here
// You can write your code in this editor
particle = part_system_create();
type = part_type_create();
part_type_shape(type,pt_shape_pixel);
part_type_scale(type,1,1);
part_type_size(type,1,5,-.1,0);

part_type_color3(type, c_yellow,c_orange,c_red);
part_type_direction(type,0,60,1,0);
part_type_speed(1,2,1,-1,0);
part_type_gravity(type,.2,80);
part_type_life(type,15,30);


globalvar emitter;
emitter = part_emitter_create(particle);
part_emitter_region(particle,emitter,x-8,x+10,y+8,y-8,ps_shape_ellipse,ps_distr_gaussian);
part_emitter_stream(particle,emitter,type,3);

