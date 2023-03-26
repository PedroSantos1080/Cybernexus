/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
script_execute(estado)


//Combate
if alarm[0] > 0 {
	if image_alpha >= 1 {
		alpha_hit = -0.05;
	}else if image_alpha <= 0 {
		alpha_hit = 0.05;
	}
	
	image_alpha += alpha_hit;
}else {
	image_alpha = 1;
}

if vida2 <= 0 {
	instance_destroy();
}