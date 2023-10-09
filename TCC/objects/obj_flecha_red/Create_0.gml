/// @description Insert description here
// You can write your code in this editor
// Código do objeto 'obj_flecha'
/// Create Event

image_xscale = 0.3;
image_yscale = 0.3;


speed = 20; // Define a velocidade da flecha (ajuste conforme necessário)

// Defina a direção da flecha com base na direção do personagem
// Supondo que obj_personagem1 possui uma variável 'direc' que indica a direção atual (0, 1, 2, 3)
if (obj_red.direc == 1) {
	sprite_index = spr_flecha_red_esquerda;
    //image_xscale = -1; // Não inverte a imagem horizontalmente
    direction = 180; // Define a direção da flecha para 180 graus
} else if (obj_red.direc == 0) {
    //image_xscale = 1; // Inverte a imagem horizontalmente
    direction = 0; // Define a direção da flecha para 0 grau
} else if (obj_red.direc == 2) {
    image_angle = 90;
    direction = 90; // Define a direção da flecha para 90 graus
} else if (obj_red.direc == 3) {
    image_angle = -90;
    direction = -90; // Define a direção da flecha para -30 graus
} else {
    instance_destroy(); // Destroi a flecha se a direção do personagem for desconhecida
}

inimigos_atingidos = ds_list_create();
