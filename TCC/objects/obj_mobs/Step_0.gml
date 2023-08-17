/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (global.pause){ 
	exit;
}else {
	image_speed = 1;
}

//Acessa o obj_controle e pega o valor da variável inimigo dele,
//que faz referencia direta ao objeto de algum inimigo do jogo
var _inimigo = obj_controle.inimigo;

if (_inimigo == noone){
	
	alarm[0] = 60000;
	
}

if (alarm[0] <= 0) {
		//Cria o inimigo dinamicamente, de acordo como foi no tempo do cronometro
		//o tipo de inimigo foi definido no step do obj_controle
		instance_create_layer(952, 54,  "Mobs", _inimigo);
		instance_create_layer(863, 48,  "Mobs", _inimigo);
		instance_create_layer(871, 107, "Mobs", _inimigo);
		instance_create_layer(937, 123, "Mobs", _inimigo);
		instance_create_layer(1004,107, "Mobs", _inimigo);
		instance_create_layer(1004, 48, "Mobs", _inimigo);
		alarm[0] = spawn_timer;
}