/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
image_xscale = 0.6;
image_yscale = 0.6;
if vida <= 0 {
	instance_destroy();
	obj_red.estado = scr_perdendo;
	
}


if (keyboard_check_pressed(ord("Q"))) {
	vida -= 5;
}


