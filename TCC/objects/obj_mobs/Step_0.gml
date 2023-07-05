/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (global.pause){ 
	exit;
}else {
	image_speed = 1;
}


if alarm[0] <= 0 {
	instance_create_layer(952, 54, "Mobs", obj_inimigo);
	instance_create_layer(863, 48, "Mobs", obj_inimigo);
	instance_create_layer(871, 107, "Mobs", obj_inimigo);
	instance_create_layer(937, 123, "Mobs", obj_inimigo);
	instance_create_layer(1004, 107, "Mobs", obj_inimigo);
	instance_create_layer(1004, 48, "Mobs", obj_inimigo);
	alarm[0] = spawn_timer;
}


