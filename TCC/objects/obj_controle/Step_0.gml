/// @description 
// Você pode escrever seu código neste editor






if keyboard_check(vk_f11) {
	window_set_fullscreen(1);
}

if keyboard_check(vk_f12) {
	window_set_fullscreen(0);
}

if (keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(4, gp_start) or gamepad_button_check_pressed(5, gp_start) ){
	global.pause = !global.pause;
}

if (gamepad_button_check(4, gp_select) or gamepad_button_check(5, gp_select) ) {
	game_end();
}

/////////////////////////////////////////////////////////////////////////////////////////////////////
//TIMER



//Executa o timer
contador.run();

//Pega o tempo atual do timer
var _tempo = contador.get_tempo();



//Define o tipo de inimigo que será gerado de acordo com o tempo do timer
if (_tempo <= 10*60) && (_tempo > 9.5*60){
	
	inimigo = obj_inimigo; //Tipo de inimigo entre 9 e 10 minutos
	
}else if (_tempo <= 9*60) && (_tempo > 8*60){
	
	inimigo = obj_inimigo2; //Tipo de inimigo entre 8 e 9 minutos
	
}else if (_tempo <= 8*60) && (_tempo > 7*60){
	
	inimigo = obj_inimigo3;  //Tipo de inimigo entre 7 e 8 minutos
	
}
else if (_tempo = 1*60) {
	
	inimigo = noone; //Desativa os inimigos
	
}