/// @description Insert description here
// You can write your code in this editor
//
 //if y <= 0{
//instance_destroy();
//}else if y >= room_height{
//instance_destroy();
 //}
		 

//if x <= 0{
//instance_destroy();
//}else if x >= room_width{
 //instance_destroy();
 // }



if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}

//Verifca se o alarm do perosnagem Red chegou a 0 quando a flecha foi atirada.

if (obj_personagem1.alarm[4] == 0 ) {
	instance_destroy();
}
