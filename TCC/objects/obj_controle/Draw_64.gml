var _c = make_color_rgb(131, 68, 87);
var _largura = display_get_gui_width();
var _altura = display_get_gui_height();
	

if (room == rm_vitoria_red) {
	alarm[0] = 0;
	alarm[1] = 0;
	alarm[3] = 0;
	alarm[2] = 0;
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(f_dano);
	draw_text_ext_color(_largura/2, _altura/2, "Parabens, Red Nulls e o vencedor!", 80, 900, _c, _c, _c, _c, 1);
	draw_text_ext_color(_largura/2, _altura/2 + 40, "Pressione Enter para recomecar", 80, 900, _c, _c, _c, _c, 1);	
	
	if keyboard_check(vk_enter) {
		game_restart();
	}
	
}


if (room == rm_vitoria_blue) {
	alarm[0] = 0;
	alarm[1] = 0;
	alarm[3] = 0;
	alarm[2] = 0;
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(f_dano);
	draw_text_ext_color(_largura/2, _altura/2, "Parabens, Blue Eins e o vencedor!", 80, 900, _c, _c, _c, _c, 1);
	draw_text_ext_color(_largura/2, _altura/2 + 40, "Pressione Enter para recomecar", 80, 900, _c, _c, _c, _c, 1);	
	
	if keyboard_check(vk_enter) {
		game_restart();
	}
}

if (global.pause) {
	draw_set_alpha(0.6);
	draw_set_color(c_black);
	draw_rectangle(0,0, _largura, _altura, false);
	draw_set_alpha(1);
	draw_set_color(-1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(f_dano);
	draw_text_ext_color(_largura/2, _altura/2, "JOGO PAUSADO", 80, 900, _c, _c, _c, _c, 1);
}