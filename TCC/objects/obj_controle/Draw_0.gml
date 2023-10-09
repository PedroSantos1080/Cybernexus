/// @description Timer
// Você pode escrever seu código neste editor
if (global.pause) {
	depth = 0;
	draw_set_alpha(0.6);
	draw_set_color(c_black);
	draw_rectangle(0,0, _largura, _altura, false);
	draw_set_alpha(1);
	draw_set_color(-1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(f_dano);
	draw_text_ext_color(_largura/2, _altura/2, "JOGO PAUSADO", 80, 900, _c, _c, _c, _c, 1);
	draw_text_ext_color(_largura/2, _altura/2 + 40, "APERTE SELECT PARA SAIR", 80, 900, _c, _c, _c, _c, 1);
	instance_create_layer(_largura/2, _altura/2 + 120, "Instances", obj_exit);
}



















