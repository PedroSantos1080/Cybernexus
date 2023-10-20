/// @description 
// Você pode escrever seu código neste editor
if (keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(4, gp_start) or gamepad_button_check_pressed(5, gp_start) ){
	global.pause = !global.pause;
}



if (global.pause){ 
	image_speed = 0;
	exit;
}


if keyboard_check(vk_f11) {
	window_set_fullscreen(1);
}

if keyboard_check(vk_f12) {
	window_set_fullscreen(0);
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

if (global.tempo == 5){

//Define o tipo de inimigo que será gerado de acordo com o tempo do timer
	if (_tempo <= 290) && (_tempo > 260){
		inimigo = obj_thewalkers2; 
	}else if (_tempo <= 260) && (_tempo > 230){
		inimigo = obj_thewalkers3; 
	}else if (_tempo <= 230) && (_tempo > 200){
		inimigo = obj_dfire2; 
	}else if (_tempo <= 200) && (_tempo > 170){
		inimigo = obj_dfire3; 
	}else if (_tempo <= 170) && (_tempo > 140){
		inimigo = obj_bongdonk2; 
	}else if (_tempo <= 140) && (_tempo > 110){
		inimigo = obj_bongdonk3;
		global.bongdonk3 = true;
	}else if (_tempo <= 110) && (_tempo > 80){
		inimigo = obj_cyberdark;
		global.bongdonk3 = false;
		global.cyberdark = true;
	}else if (_tempo <= 80) && (_tempo > 60){
		inimigo = obj_timercyberdark; //Para o Spawn de Cyberdarks
	}else if (_tempo = 60){
		inimigo = obj_timerboss; //Desativa os inimigos
	}
	//w2 4:50, 4:35,
	//w3 4:20, 4:05, 
	//d2 3:50, 3:35,  
	//d3 3:20, 3:05, 
	//b2 2:50, 2:35, 
	//b3 2:20, 2:05,
	//cd 1:50, 1:35,
	//pp 1:20
	//bo 1:00
	//ms 0:00

	//5-300, 4-240, 3-180, 2-120, 1-60
}else
if (global.tempo == 10){

//Define o tipo de inimigo que será gerado de acordo com o tempo do timer
	if (_tempo <= 580) && (_tempo > 545){
		inimigo = obj_thewalkers1; 
	}else if (_tempo <= 545) && (_tempo > 485){
		inimigo = obj_thewalkers2; 
	}else if (_tempo <= 485) && (_tempo > 440){
		inimigo = obj_thewalkers3; 
	}else if (_tempo <= 440) && (_tempo > 425){
		inimigo = noone; 
	}else if (_tempo <= 425) && (_tempo > 380){
		inimigo = obj_dfire1;          
	}else if (_tempo <= 380) && (_tempo > 350){
		inimigo = obj_dfire2;  
	}else if (_tempo <= 350) && (_tempo > 275){	
		inimigo = obj_dfire3;
	}else if (_tempo <= 275) && (_tempo > 230){
		inimigo = obj_bongdonk1;  
	}else if (_tempo <= 230) && (_tempo > 185){
		inimigo = obj_bongdonk2;  
	}else if (_tempo <= 185) && (_tempo > 125){
		inimigo = obj_bongdonk3;  
		global.bongdonk3 = true;
	}else if (_tempo <= 125) && (_tempo > 80){
		inimigo = obj_cyberdark;  
		global.bongdonk3 = false;
		global.cyberdark = true;
	}else if (_tempo <= 80) && (_tempo > 60){
		inimigo = obj_timercyberdark;
	}else if (_tempo = 60) {
		inimigo = obj_timerboss; //Desativa os inimigos
	}

}