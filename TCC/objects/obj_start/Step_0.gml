/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// This will work on its own
	audio_play_sound(snd_menu, 1, true);

if (keyboard_check_pressed(vk_enter) or  gamepad_button_check(4, gp_start) or gamepad_button_check(5, gp_start) ) {
	audio_play_sound(snd_select_press_menu, 3, false);
	room_goto(rm_menu_modo);
}

















