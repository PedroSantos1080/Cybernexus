/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
audio_group_load(audiogroup_default);
audio_play_sound(snd_vida_nexus, 1, false);

obj_cristal_red.vida += 1;
with(other) {
	instance_destroy();
}

