/// @description Insert description here
// You can write your code in this editor

//obj_inimigo.vida -= 3;
var _inst = instance_create_layer(x, y, "Personagem_red", obj_dano);
_inst.alvo = other;
_inst.dano = global.dano_arco_anterior_red;


var _dir = point_direction(x, y, other.x, other.y);
other.vida -= global.dano_arco_anterior_red;
instance_destroy();