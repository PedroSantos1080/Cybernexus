function scr_personagem1_movendo(){
	var esquerda, direita, baixo, cima, parado

	esquerda = keyboard_check(ord("A"));
	direita = keyboard_check(ord("D"));
	cima = keyboard_check(ord("W"));
	baixo = keyboard_check(ord("S"));
	parado = keyboard_check(vk_nokey);

	x+= (direita - esquerda) * velocidade;
	y+= (baixo - cima) * velocidade;
	
	
	if (direita) {
		image_xscale = 1;
		sprite_index = spr_personagem_red_andando;
		direc = 0;
	}else if (esquerda) {
		image_xscale = -1;
		sprite_index = spr_personagem_red_andando;
		direc = 1;
	}else if (cima) {
		sprite_index = spr_personagem_red_andando;
	}else if (baixo) {
		sprite_index = spr_personagem_red_andando;
	}else {
		if direc == 0 {
			image_xscale = 1;
			sprite_index = spr_personagem_red_parado;
		}else if direc == 1{
			image_xscale = -1;
			sprite_index = spr_personagem_red_parado;
		}
	
	}
	
	
	
	if keyboard_check_pressed(ord("F")) {
		ds_list_clear(inimigos_atingidos);
		image_index = 0;
		estado = scr_personagem_atacando;
		mask_index = spr_personagem_red_atack_hb;
	}
	
}

function scr_personagem_atacando() {
    //ATAQUE EM INIMIGOS
    var inimigos_na_hitbox = ds_list_create();
    
    var inimigos = instance_place_list(x, y, obj_inimigo, inimigos_na_hitbox, false);
    if (inimigos > 0) {
        for (var i = 0; i < inimigos; i++) {
            var inimigoID = inimigos_na_hitbox[| i];
            
            if (ds_list_find_index(inimigos_atingidos, inimigoID) == -1) {
                ds_list_add(inimigos_atingidos, inimigoID);
                
                with (inimigoID) {
					
					var _dir = point_direction(x, y , other.x, other.y);
					var _empurrao = 4;
					var _empurraox = lengthdir_x(_empurrao, _dir);
					var _empurraoy = lengthdir_y(_empurrao, _dir);

					other.x += _empurraox;
					other.y += _empurraoy;
					
					
                    vida -= other.dano;
                    var _inst = instance_create_layer(x, y, "Personagem_red", obj_dano);
                    _inst.alvo = other;
                    _inst.dano = obj_personagem1.dano;
                }
            }
        }
    }

///////////////////////////////////////////////////////////////////////////////////////////////////
//ATAQUE NO CRISTAL
	var cristal = instance_place_list(x,y, obj_cristal_blue, inimigos_na_hitbox, false);
	if (cristal) > 0 {
		for (var i = 0; i < cristal; i++) {
			var inimigoID = inimigos_na_hitbox[| i];
			
			if (ds_list_find_index(inimigos_atingidos, inimigoID)) == -1 {
				ds_list_add(inimigos_atingidos, inimigoID);
				
				with(inimigoID) {
					obj_cristal_blue.vida -= obj_personagem1.dano;
					var _inst = instance_create_layer(x, y, "Cristal_blue", obj_dano);
					_inst.alvo = other;
					_inst.dano = obj_personagem1.dano;
				}
			}
		}
	}
	
///////////////////////////////////////////////////////////////////////////////////////////////////
//ATAQUE NO PERSONAGEM
	var ataque = instance_place_list(x,y, obj_personagem2, inimigos_na_hitbox, false);
	if (ataque) > 0 {
		for (var i = 0; i < ataque; i++) {
			var inimigoID = inimigos_na_hitbox[| i];
			
			if (ds_list_find_index(inimigos_atingidos, inimigoID)) == -1 {
				ds_list_add(inimigos_atingidos, inimigoID);
				
				with(inimigoID) {
					obj_personagem2.vida -= obj_personagem1.dano;
					var _inst = instance_create_layer(x, y, "Personagem_blue", obj_dano);
					_inst.alvo = other;
					_inst.dano = obj_personagem1.dano;
				}
			}
		}
	}
	
	
	
	ds_list_destroy(inimigos_na_hitbox);
	
	sprite_index = spr_personagem_red_atack;
	mask_index = spr_personagem_red_atack_hb;
	
	
	
	
	if scr_fim_da_animacao() {
		mask_index = spr_personagem_red_andando;
		estado = scr_personagem1_movendo;
	}
}