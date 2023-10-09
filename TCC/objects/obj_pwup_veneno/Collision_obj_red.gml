/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (keyboard_check(ord("E")) or gamepad_button_check(global.controle1, gp_face4)){
	global.veneno_red = true;
	instance_destroy();
}
