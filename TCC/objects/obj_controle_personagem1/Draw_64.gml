var _sprl = sprite_get_width(spr_vida); 
var _buffer = 30; 
var _vidas = obj_cristal_red.vida;

for (var i = 0; i < _vidas; i++;) {
	draw_sprite_ext(spr_vida, 0, 50 + (_sprl * i) + (_buffer * i), 50, 2, 2, 0, c_white, 1);
}

if (_vidas = 0) {
	instance_destroy();
}
