/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



var _equipa = keyboard_check(ord("O")) or gamepad_button_check_pressed(global.controle1, gp_face4);

if (_equipa) {
	obj_blue._dano_espada_anterior += 2;
	obj_blue.dano += 2;
	with (obj_blue) {alarm[1] = 300}
	instance_destroy();	
}



if (_equipa && global.red_espada_cybernetica){
	global.blue_espada_cybernetica= false;
	obj_red.dano_espada_cyb *= 2;
	with (obj_red) {alarm[1] = 300}
	instance_destroy();	
}else if (_equipa && global.blue_espada_cybernetica) {
	global.red_espada_cybernetica = false;
	obj_blue.dano_espada_cyb *= 2;
	with (obj_blue) {alarm[1] = 300}
	instance_destroy();
}

