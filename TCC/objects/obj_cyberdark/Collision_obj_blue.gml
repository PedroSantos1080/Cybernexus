/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if alarm[0] <= 0 {
	if (obj_blue.estado != scr_red_atacando) {
		obj_blue.vida -= 13;
		estado = scr_cyberdark_atacando;
		alarm[0] = 180;
	}
}

