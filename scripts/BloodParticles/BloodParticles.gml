/// @description Insert description here
// You can write your code in this editor
divider = 4;
live = true;




bloodEmitter = part_emitter_create(bloodParticle);
part_emitter_region(bloodParticle,bloodEmitter,x-(sprite_width/divider),x+(sprite_width/divider),y+(sprite_height/2), y-(sprite_height/2),ps_shape_diamond,ps_distr_invgaussian);
part_emitter_burst(bloodParticle,bloodEmitter,bloodType,100);

part_emitter_destroy(bloodParticle,bloodEmitter);



