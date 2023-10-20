/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if alarm[2] <= 0 {
	if (obj_red.estado != scr_red_atacando) {
		obj_red.vida -= 13;
		estado = scr_cyberdark_atacando;
		alarm[2] = 180;
	}
}