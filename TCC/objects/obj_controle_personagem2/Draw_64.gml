/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _sprl = sprite_get_width(spr_vida); //pega o tamanho da sprite
var _buffer = 30; //espaço entre os corações
var _vidas = obj_cristal_blue.vida;

for (var i = 0; i < _vidas; i++;) {
	draw_sprite_ext(spr_vida, 0, 840 + (_sprl * i) + (_buffer * i), 50, 2, 2, 0, c_white, 1);
}

if (_vidas = 0) {
	instance_destroy();
}