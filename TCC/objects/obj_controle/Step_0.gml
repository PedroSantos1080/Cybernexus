/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if keyboard_check(vk_f11) {
	window_set_fullscreen(1);
}

if keyboard_check(vk_f12) {
	window_set_fullscreen(0);
}

if (keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(4, gp_start) or gamepad_button_check_pressed(5, gp_start) ){
	global.pause = !global.pause;
}

if (gamepad_button_check(4, gp_select) or gamepad_button_check(5, gp_select) ) {
	game_end();
}