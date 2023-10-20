/// @description Insert description here
// You can write your code in this editor



var _equipa = keyboard_check(ord("E")) or gamepad_button_check_pressed(global.controle1, gp_face4);

if (_equipa){
	global.red_pegou_espada = true;
	global.espada_red = true; 
	instance_destroy();
	obj_red._dano_espada_anterior = obj_red.dano_espada;
}

if (_equipa && global.red_espada_cybernetica){
	//global.red_pegou_espada = true;
	//global.espada_red = true; 
	global.blue_espada_cybernetica = false;
	
}else if (_equipa && global.blue_espada_cybernetica) {
	//global.blue_pegou_espada = true;
	//global.espada_blue = true; 
	global.red_espada_cybernetica = false;
}