/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (keyboard_check(ord("P")) or gamepad_button_check(global.controle1, gp_face4) ){
	global.veneno_blue = true;
	instance_destroy();
}
