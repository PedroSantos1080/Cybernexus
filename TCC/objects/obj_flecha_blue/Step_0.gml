if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}

//Verifca se o alarm do perosnagem Red chegou a 0 quando a flecha foi atirada.

if (obj_blue.alarm[4] == 0 ) {
	instance_destroy();
}
