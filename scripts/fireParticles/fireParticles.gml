



fireEmitter = part_emitter_create(fireParticle);
part_emitter_region(fireParticle,fireEmitter,x-8,x+10,y+12, y-5,ps_shape_ellipse,ps_distr_gaussian);
part_emitter_stream(fireParticle,fireEmitter,fireType,3);