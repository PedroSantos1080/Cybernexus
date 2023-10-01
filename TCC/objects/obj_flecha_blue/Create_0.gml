/// @description Insert description here
// You can write your code in this editor
// Código do objeto 'obj_flecha'
/// Create Event


speed = 20; // Define a velocidade da flecha (ajuste conforme necessário)


image_xscale = 0.4;
image_yscale = 0.4;


// Defina a direção da flecha com base na direção do personagem
// Supondo que obj_personagem2 possui uma variável 'direc' que indica a direção atual (0, 1, 2, 3)
if (obj_blue.direc == 1) {
	sprite_index = spr_flecha_blue_esquerda;
    //image_xscale = -1; // Não inverte a imagem horizontalmente
    direction = 180; // Define a direção da flecha para 180 graus
} else if (obj_blue.direc == 0) {
    //image_xscale = 1; // Inverte a imagem horizontalmente
    direction = 0; // Define a direção da flecha para 0 grau
} else if (obj_blue.direc == 2) {
    image_angle = 90;
    direction = 90; // Define a direção da flecha para 90 graus
} else if (obj_blue.direc == 3) {
    image_angle = -90;
    direction = -90; // Define a direção da flecha para -30 graus
} else {
    instance_destroy(); // Destroi a flecha se a direção do personagem for desconhecida
}

