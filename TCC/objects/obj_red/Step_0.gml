/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (global.pause){ 
	image_speed = 0;
	exit;
}else {
	image_speed = 1;
}

depth = -y;


if scr_fim_da_animacao() && !surgimento{
	direc = 0;
	surgimento = true;
}

script_execute(estado);

//Combate


if vida <= 0 {
	estado = scr_red_morrendo;
}


if (keyboard_check_pressed(ord("Z"))) {
	vida -= 25;
}

