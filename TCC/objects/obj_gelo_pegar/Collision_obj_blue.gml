/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (keyboard_check(ord("P")) or gamepad_button_check(global.controle1, gp_face4)){
	instance_destroy();
	global.pwup_gelo_pause_blue = true;
}
