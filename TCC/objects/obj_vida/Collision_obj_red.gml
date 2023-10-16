/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
audio_group_load(audiogroup_default);
audio_play_sound(snd_vida_nexus, 1, false);

if (obj_cristal_red.vida < 100) {
	obj_cristal_red.vida += 1;	
}


instance_destroy();










