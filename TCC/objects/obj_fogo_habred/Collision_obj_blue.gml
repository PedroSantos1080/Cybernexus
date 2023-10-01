/// @description Dano no Blue
// Você pode escrever seu código neste editor
if alarm[0] <= 0 {
	if (obj_blue.estado != scr_blue_atacando) {
		obj_blue.vida -= 0.2;
		alarm[0] = 60;
	}
	
}
