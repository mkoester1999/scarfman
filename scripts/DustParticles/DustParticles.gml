/// @description Insert description here
// You can write your code in this editor



dustEmitter = part_emitter_create(dustParticle);
part_emitter_region(dustParticle,dustEmitter,x-3,x+3,y+12, y-5,ps_shape_diamond,ps_distr_gaussian);
part_emitter_burst(dustParticle,dustEmitter,dustType,1);
part_emitter_destroy(dustParticle,dustEmitter);

