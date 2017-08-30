
//blood particles
globalvar bloodParticle;
globalvar bloodType;

bloodParticle = part_system_create();
bloodType = part_type_create();
part_type_shape(bloodType,pt_shape_pixel);
part_type_scale(bloodType,1,1);
part_type_size(bloodType,1,3,-.1,0);

part_type_color1(bloodType,c_red);
part_type_direction(bloodType,45,110,1,0);
part_type_speed(bloodType,5,10,-1,0);
part_type_gravity(bloodType,1.5,270);
part_type_life(bloodType,60,120);

//dust particles
globalvar dustParticle;
globalvar dustType;
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

//fireParticles
globalvar fireParticle;
globalvar fireType;
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