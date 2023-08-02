var _sprl = sprite_get_width(spr_vida); 
var _buffer = 30; 
var _vidas = obj_cristal_red.vida;

for (var i = 0; i < _vidas; i++;) {
	draw_sprite_ext(spr_vida, 0, 50 + (_sprl * i) + (_buffer * i), 50, 2, 2, 0, c_white, 1);
}

if (_vidas = 0) {
	instance_destroy();
}


//draw_set_font(f_dano); // Define a fonte a ser usada para o texto (substitua 'font' pelo nome da fonte que deseja usar)
//draw_set_color(c_black); // Define a cor do texto (c_white é branco, mas você pode escolher outras cores)
//draw_text(x, y, "FPS: " + string(fps)); // Exibe o texto "FPS: " seguido do valor do FPS atual
