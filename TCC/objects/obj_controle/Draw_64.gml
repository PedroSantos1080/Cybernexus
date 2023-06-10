/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _c = make_color_rgb(131, 68, 87);
var _largura = display_get_gui_width();
var _altura = display_get_gui_height();
	

if (room == rm_vitoria) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(f_dano);
	draw_text_ext_color(_largura/2, _altura/2, "Parabens, Red Nulls e o vencedor!", 80, 900, _c, _c, _c, _c, 1);
}