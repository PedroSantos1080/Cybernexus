/// @description Insert description here
// You can write your code in this editor
var _inst = instance_create_layer(x, y, "Personagem_red", obj_dano);
_inst.alvo = other;
_inst.dano = global.dano_arco_anterior_red;

other.vida -= global.dano_arco_anterior_red;
instance_destroy();

