// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_personagem1_movendo(){
	var esquerda, direita, baixo, cima, parado

	esquerda = keyboard_check(ord("A"));
	direita = keyboard_check(ord("D"));
	cima = keyboard_check(ord("W"));
	baixo = keyboard_check(ord("S"));
	parado = keyboard_check(vk_nokey);

	x+= (direita - esquerda) * velocidade;
	y+= (baixo - cima) * velocidade;
	
	
	if (esquerda) {
		sprite_index = spr_personagem1;
		direc = 1;
	}else if (direita) {
		sprite_index = spr_personagem1;
		direc = 0;
	}
	
	if keyboard_check_pressed(ord("F")) {
		image_index = 0;
		estado = scr_personagem_atacando;
		
		if direc == 0 {
			instance_create_layer(x + 70, y - 50, "Instances", obj_hitbox);
		}else if direc == 1 {
			instance_create_layer(x - 70, y - 50, "Instances", obj_hitbox2);
		}
	}
	
	
}

function scr_personagem_atacando() {
	sprite_index = spr_personagem_atacando1;
	if scr_fim_da_animacao() {
		estado = scr_personagem1_movendo;
	}
}