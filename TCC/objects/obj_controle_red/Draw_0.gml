
depth = 0;

if (global.pwup_fogo_pegar_red) {
	draw_sprite_ext(spr_fogo_equipado, 0, x + 500, y - 50, 0.1, 0.1, 0 ,c_white, 1);
}

if (global.veneno_red) {
	draw_sprite_ext(spr_pwup_veneno_equipado, 0, x + 550, y - 50, 0.1, 0.1, 0 ,c_white, 1);
}

if (global.pwup_gelo_pause_red) {
	draw_sprite_ext(spr_gelo_equipado, 0, x + 600, y - 50, 0.1, 0.1, 0 ,c_white, 1);
}



var _guia = display_get_gui_height();
var _spra = sprite_get_height(spr_red_hud_vida);
var _huda = _guia - _spra;


if (instance_exists(obj_red)) {

	var _vida = obj_red.vida;
	var _maxvida = obj_red.max_vida
	var _vida_nexus = obj_cristal_red.vida;
	var _maxvida_nexus = obj_cristal_red.max_vida;

	var _sprl = sprite_get_width(spr_vida);
	var _buffer = -5; 

	//Vida do Personagem
	for (var _i = 0; _i < _vida; _i++;) {
		draw_sprite_ext(spr_red_barra_vida, 0, 113 + (_sprl * _i) + (_buffer * _i), 100, 10, 2, 0, c_white, 1);
	}

	//Vida do Nexus
	for (var _i = 0; _i < _vida_nexus; _i++;) {
		draw_sprite_ext(spr_red_barra_vida, 0, 123 + (_sprl * _i) + (-14.8 * _i), 55, 10, 2, 0, c_white, 1);
	}

	draw_self();

}