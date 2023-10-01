/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if alarm[0] <= 0 {
	if (obj_red.estado != scr_red_atacando) {
		obj_red.vida -= 0.2;
		alarm[0] = 60;
	}
	
}
