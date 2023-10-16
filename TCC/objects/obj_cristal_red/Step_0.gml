/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//image_xscale = 0.5;
//image_yscale = 0.5;
if vida <= 0 {
	instance_destroy();
	obj_red.estado = scr_perdendo;
	room_goto(rm_vitoria_blue);
}


if (keyboard_check_pressed(ord("Q"))) {
	vida -= 5;
}


