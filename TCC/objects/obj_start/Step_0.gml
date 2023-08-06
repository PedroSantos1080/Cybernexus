/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if (gamepad_button_check(4, gp_start) or gamepad_button_check(5, gp_start) ) {
	audio_group_load(audiogroup_default);
	audio_stop_sound(snd_menu)
	audio_play_sound(snd_batalha, 1, true);
	room_goto(rm_gameplay);
}

















