/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _inst = instance_create_layer(x, y, "Personagem_blue", obj_dano);
_inst.alvo = other;
_inst.dano = global.dano_arco_anterior_blue;


var _dir = point_direction(x, y, other.x, other.y);
other.vida -= global.dano_arco_anterior_blue;
instance_destroy();