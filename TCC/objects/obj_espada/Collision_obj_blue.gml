/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _equipa = keyboard_check(ord("O")) or gamepad_button_check_pressed(global.controle2, gp_face4);

if (_equipa){
	global.espada_blue = true;
	global.blue_pegou_espada = true;
	instance_destroy();
	obj_blue._dano_espada_anterior = obj_blue.dano_espada;

}




if (_equipa && global.blue_espada_cybernetica){
	global.red_espada_cybernetica = false;
	//global.blue_pegou_espada = true;
	//global.espada_blue = true; 
	
}else if (_equipa && global.red_espada_cybernetica) {
	global.blue_espada_cybernetica = false;
	//global.red_pegou_espada = true;
	//global.espada_red = true; 
}

