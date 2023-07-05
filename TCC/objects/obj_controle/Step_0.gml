/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if keyboard_check(vk_f11) {
	window_set_fullscreen(1);
}

if keyboard_check(vk_f12) {
	window_set_fullscreen(0);
}

if keyboard_check_pressed(vk_escape) {
	global.pause = !global.pause;
}