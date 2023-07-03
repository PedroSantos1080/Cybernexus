/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (global.pause){ 
	exit;
}else {
	image_speed = 1;
}


if alarm[0] <= 0 {
	instance_create_layer(653, 54, "Instances", obj_inimigo);
	
	alarm[0] = spawn_timer;
}


