/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//image_xscale = 0.5;
//image_yscale = 0.5;
if vida < 0 {
	instance_destroy();
	obj_blue.estado = scr_blue_perdendo;
	room_goto(rm_vitoria_red);
}
