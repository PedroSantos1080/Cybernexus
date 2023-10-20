    /// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (global.pause){ 
	image_speed = 0;
	exit;
}else {
	image_speed = 1;
}

depth = -y;
image_xscale = 0.3;
image_yscale = 0.3;

if scr_fim_da_animacao() && !surgimento{
	direc = 1;
	surgimento = true;
}

script_execute(estado);


if vida <= 0 {
	estado = scr_blue_morrendo;
}


if (keyboard_check_pressed(ord("X"))) {
	vida -= 25;
}