/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _sprl = sprite_get_width(spr_vida); //pega o tamanho da sprite
var _buffer = 30; //espaço entre os corações
var _vidas = obj_personagem1.vida;

for (var i = 0; i < _vidas; i++;) {
	draw_sprite_ext(spr_vida, 0, 20 + (_sprl * i) + (_buffer * i), 20, 2, 2, 0, c_white, 1);
}

