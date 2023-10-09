/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (keyboard_check_pressed(ord("P")) or gamepad_button_check(global.controle1, gp_face4)){
	audio_group_load(audiogroup_default);
	audio_play_sound(snd_escudo, 1, false);
	global.escudo_blue = true;
	instance_destroy();
}