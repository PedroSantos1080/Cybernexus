/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// This will work on its own


if (keyboard_check_pressed(vk_enter) or  gamepad_button_check(4, gp_start) or gamepad_button_check(5, gp_start) ) {
	//audio_group_load(audiogroup_default);
	//audio_stop_sound(snd_menu)
	//audio_play_sound(snd_batalha, 1, true);
	//room_goto(rm_gameplay);
	room_goto(rm_menu_modo);
}

















