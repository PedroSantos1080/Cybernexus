/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if alarm[2] <= 0 {
	if (obj_personagem1.estado != scr_personagem_atacando) {
		obj_personagem1.vida -= 1;
		alarm[2] = 180;
	}
	
}