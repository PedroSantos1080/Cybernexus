// @description Inserir descrição aqui
 //Você pode escrever seu código neste editor
if alarm[2] <= 0 {
	if (obj_red.estado != scr_red_atacando) {
		obj_red.vida -= 1;
		alarm[2] = 180;
	}
	
}