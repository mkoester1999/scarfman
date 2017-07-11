/// @description Insert description here
// You can write your code in this editor
dustParticle = part_system_create();
dustType = part_type_create();
part_type_shape(dustType,pt_shape_pixel);
part_type_scale(dustType,1,1);
part_type_size(dustType,1,3,-.1,0);

part_type_color1(dustType,c_gray);
part_type_direction(dustType,0,180,1,0);
part_type_speed(1,2,1,-1,0);
part_type_gravity(dustType,.2,330);
part_type_life(dustType,8,15);



dustEmitter = part_emitter_create(dustParticle);
part_emitter_region(dustParticle,dustEmitter,x-3,x+3,y+12, y-5,ps_shape_diamond,ps_distr_gaussian);
part_emitter_burst(dustParticle,dustEmitter,dustType,1);


