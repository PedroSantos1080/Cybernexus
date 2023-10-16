/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(ord("E")) or gamepad_button_check_pressed(global.controle1, gp_face4)){
	global.red_pegou_espada = true;
	global.espada_red = true; 
	instance_destroy();
	obj_red._dano_espada_anterior = obj_red.dano_espada;
	
}

