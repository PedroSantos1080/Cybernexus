if alarm[0] <= 0 {
	if (obj_blue.estado != scr_personagem2_atacando) {
		obj_blue.vida -= 1;
		alarm[0] = 180;
	}
	
}