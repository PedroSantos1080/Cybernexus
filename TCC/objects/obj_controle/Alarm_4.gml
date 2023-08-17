/// @description Timer
// Você pode escrever seu código neste editor
if (global.pause){ 
	exit;
}else {
	image_speed = 1;
}

//Spawna o inimigo com base em qual tipo de inimigo ele é
//Comando executado a cada 10seg
var tipo_inimigo;

if (inimigo == 1){
	tipo_inimigo = obj_inimigo;
}else if(inimigo == 2){
	tipo_inimigo = obj_inimigo2;
}else if(inimigo == 3){
	tipo_inimigo = obj_inimigo3;
}else if (inimigo == noone){
	alarm[0] = 10000;
}
instance_create_layer(952, 54,  "Mobs", tipo_inimigo);
instance_create_layer(863, 48,  "Mobs", tipo_inimigo);
instance_create_layer(871, 107, "Mobs", tipo_inimigo);
instance_create_layer(937, 123, "Mobs", tipo_inimigo);
instance_create_layer(1004,107, "Mobs", tipo_inimigo);
instance_create_layer(1004, 48, "Mobs", tipo_inimigo);

alarm[0] = 10;
