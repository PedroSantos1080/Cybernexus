/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (global.pause){ 
	exit;
}
	
//Acessa o obj_controle e pega o valor da variável inimigo dele,
//que faz referencia direta ao objeto de algum inimigo do jogo
var _inimigo = obj_controle.inimigo;

if (_inimigo == noone){
	alarm[0] = spawn_timer2; //Pausa para os players se enfrentarem
}

if (_inimigo == obj_timerboss) || (_inimigo == obj_timercyberdark) {
	alarm[0] = 6000; //Pausa o spawn de waves durante eventos
}

if (alarm[0] <= 0) && (global.bongdonk3 = false) {
		//Cria o inimigo dinamicamente, de acordo como foi no tempo do cronometro
		//o tipo de inimigo foi definido no step do obj_controle
		if (_inimigo == obj_thewalkers1 || _inimigo == obj_thewalkers2 || _inimigo == obj_thewalkers3) {
			audio_play_sound(snd_thewalker, 1, false);
		}else if (_inimigo == obj_dfire1 || _inimigo == obj_dfire2 || _inimigo == obj_dfire3) {
			audio_play_sound(snd_d_fire, 1, false);
		}else if (_inimigo == obj_bongdonk1 || _inimigo == obj_bongdonk2 || _inimigo == obj_bongdonk3) {
			audio_play_sound(snd_bongdonk, 1, false);
		}else if (_inimigo == obj_cyberdark) {
			audio_play_sound(snd_cyberdark, 1, false);
		}
		
		instance_create_layer(800, 100,  "Mobs", _inimigo);
		instance_create_layer(750, 100,  "Mobs", _inimigo);
	//	instance_create_layer(700, 100, "Mobs", _inimigo);
	//	instance_create_layer(1100, 100, "Mobs", _inimigo);
		instance_create_layer(1150,100, "Mobs", _inimigo);
		instance_create_layer(1200, 100, "Mobs", _inimigo);
		alarm[0] = spawn_timer;
		
}else if (alarm[0] <= 0) && (global.bongdonk3 = true) {
	//Spawn Bongdonk3
		instance_create_layer(800, 100,  "Mobs", obj_bongdonk3);
		instance_create_layer(750, 100,  "Mobs", obj_bongdonk3);
		instance_create_layer(1150,100, "Mobs", obj_bongdonk3);
		instance_create_layer(1200, 100, "Mobs", obj_bongdonk3);
		alarm[0] = spawn_timer;
		
}else if (alarm[0] <= 0) && (global.cyberdark = true) {
	//Spawn Cyberdark
		instance_create_layer(800, 100,  "Mobs", obj_cyberdark);
		instance_create_layer(750, 100,  "Mobs", obj_cyberdark);
		instance_create_layer(1150,100, "Mobs", obj_cyberdark);
		instance_create_layer(1200, 100, "Mobs", obj_cyberdark);
		alarm[0] = spawn_timer;
}
