if (global.pwup_fogo_pegar_blue) {
	draw_sprite_ext(spr_fogo_equipado, 0, x - 500, y - 50, 0.1, 0.1, 0 ,c_white, 1);
}

if (global.veneno_blue) {
	draw_sprite_ext(spr_pwup_veneno_equipado, 0, x - 550, y - 50, 0.1, 0.1, 0 ,c_white, 1);
}

if (global.pwup_gelo_pause_blue) {
	draw_sprite_ext(spr_gelo_equipado, 0, x - 600, y - 50, 0.1, 0.1, 0 ,c_white, 1);
}



depth = 0;

var _escala = 2;
var _guia = display_get_gui_height();
var _spra = sprite_get_height(spr_red_hud_vida);
var _huda = _guia - _spra;


if (instance_exists(obj_blue)) {
	var _vida = obj_blue.vida;
	var _maxvida = obj_blue.max_vida;

	var _vida_nexus = obj_cristal_blue.vida;
	var _maxvida_nexus = obj_cristal_blue.max_vida;


	var _sprl = sprite_get_width(spr_vida);
	var _buffer = -5; 



	//Vida do Personagem
	for (var _i = 0; _i < _vida; _i++) {
		draw_sprite_ext(spr_blue_barra_vida, 0, (1460 + (_sprl * _maxvida) + (_buffer * _maxvida)) - ((_sprl * _i) + (_buffer * _i)), 100, 4, 1, 0, c_white, 1);
	}


	//Vida do Nexus
	for (var _i = 0; _i < _maxvida_nexus; _i++) {
		if (_i < _vida_nexus) {
			draw_sprite_ext(spr_blue_barra_vida, 0, (1788 + (-4.3 * _i)), 55, 1, 0.8, 0, c_white, 1);
		}
		//se _i é menor que _vida_nexus (a vida atual), o que significa que essa parte da barra de vida ainda está cheia. Se _i é maior ou igual a 
		//_vida_nexus, então essa parte da barra de vida não é desenhada, o que cria o efeito de uma barra de vida diminuindo para a direita.
	}

	draw_self();
}



