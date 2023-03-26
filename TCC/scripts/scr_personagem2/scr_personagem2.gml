// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_personagem2_movendo(){
	var esquerda, direita, baixo, cima, parado

	esquerda = keyboard_check(vk_left);
	direita = keyboard_check(vk_right);
	cima = keyboard_check(vk_up);
	baixo = keyboard_check(vk_down);
	parado = keyboard_check(vk_nokey);

	x+= (direita - esquerda) * velocidade;
	y+= (baixo - cima) * velocidade;
	
	if (esquerda) {
		sprite_index = spr_personagem2;
		direc = 1;
	}else if (direita) {
		sprite_index = spr_personagem2;
		direc = 0;
	}
	
	if keyboard_check_pressed(ord("L")) {
		image_index = 0;
		estado = scr_personagem_atacando2;
		
		if direc == 0 {
			instance_create_layer(x + 70, y - 50, "Instances", obj_hitbox);
		}else if direc == 1 {
			instance_create_layer(x - 70, y - 50, "Instances", obj_hitbox2);
		}
	}
	
	
}

function scr_personagem_atacando2() {
	sprite_index = spr_personagem_atacando2;
	if scr_fim_da_animation() {
		estado = scr_personagem2_movendo;
	}
}