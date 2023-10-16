/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (keyboard_check(ord("O")) or gamepad_button_check_pressed(global.controle2, gp_face3)){
	global.espada_blue = true;
	global.blue_pegou_espada = true;
	instance_destroy();
	obj_blue._dano_espada_anterior = obj_blue.dano_espada;

}




