/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (global.pause){ 
	image_speed = 0;
	exit;
}else {
	image_speed = 1;
}

 
if scr_fim_da_animacao() && !surgimento{
	surgimento = true;
	dir = 0 or 1;
}

script_execute(estado);

if vida <= 0 {
	estado = scr_cyberdark_morrendo;
}