/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (keyboard_check(ord("E")) or gamepad_button_check(global.controle1, gp_face4)){
	instance_destroy();
	global.pwup_fogo_pegar_red = true;
}
