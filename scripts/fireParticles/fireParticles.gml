fireParticle = part_system_create();
fireType = part_type_create();
part_type_shape(fireType,pt_shape_pixel);
part_type_scale(fireType,1,1);
part_type_size(fireType,1,5,-.1,0);

part_type_color3(fireType, c_yellow,c_orange,c_red);
part_type_direction(fireType,0,60,1,0);
//part_type_speed(1,2,1,-1,0);
part_type_gravity(fireType,.2,80);
part_type_life(fireType,15,30);



fireEmitter = part_emitter_create(fireParticle);
part_emitter_region(fireParticle,fireEmitter,x-8,x+10,y+12, y-5,ps_shape_ellipse,ps_distr_gaussian);
part_emitter_stream(fireParticle,fireEmitter,fireType,3);