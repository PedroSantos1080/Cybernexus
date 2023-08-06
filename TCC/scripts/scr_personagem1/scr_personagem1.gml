function scr_personagem1_movendo() {

	#region Movimentação
	
    var _esquerda, _direita, _baixo, _cima, _parado



	gamepad_set_axis_deadzone(4, 0.25);
    _esquerda = keyboard_check(ord("A")) or gamepad_axis_value(4, gp_axislh) < -0.25;
    _direita = keyboard_check(ord("D")) or gamepad_axis_value(4, gp_axislh) > 0.25;
    _cima = keyboard_check(ord("W")) or gamepad_axis_value(4, gp_axislv) < -0.25;
    _baixo = keyboard_check(ord("S")) or gamepad_axis_value(4, gp_axislv) > 0.25;
    _parado = keyboard_check(vk_nokey);
	
	

    
    if (_direita) {
        hveloc = velocidade;
        sprite_index = spr_red_correndo_direita;
        direc = 0;						
    } else if (_esquerda) {
        hveloc = -velocidade;
        sprite_index = spr_red_correndo_esquerda;
        direc = 1;												
    } else {
        hveloc = 0;
	if direc == 0 {
		sprite_index = spr_red_parado_direita;
	} else if direc == 1{			
		sprite_index = spr_red_parado_esquerda;
	}		
    }

   if (_cima) {
	   sprite_index = spr_red_correndo_costas;
        vveloc = -velocidade;
		 direc = 2;
    } else if (_baixo) {
		sprite_index = spr_red_correndo_frente;
        vveloc = velocidade;
		 direc = 3;
    } else {
        vveloc = 0;
		if direc == 2 {
		sprite_index = spr_red_parado_costas;
	} else if direc == 3{			
		sprite_index = spr_red_parado_frente;
	}		
    }
	
	#endregion
	
	#region Colisão
	
	if place_meeting(x + hveloc, y, obj_parede){
		while !place_meeting(x + sign(hveloc), y, obj_parede){
			x += sign(hveloc);
		}
		hveloc = 0;
	}
	if place_meeting(x, y + vveloc, obj_parede){
			while !place_meeting(x, y + sign(vveloc), obj_parede){
			y += sign(vveloc);
		}
		vveloc = 0;
	}
	
	#endregion
	
	x += hveloc;
	y += vveloc;
	
	#region Ataque
	
	if (vida < vida_anterior && !tomou_dano) {
		estado = scr_red_dano;
		vida_anterior = vida;
		tomou_dano = true;
	}
	

	if (keyboard_check_pressed(ord("G")) > 0 && global.arco_red == true) {
		global.arco_red = false;
		alarm[4] = 50;// Distancia da flecha.
		alarm[3] = 120;//Tempo de recarga.
		instance_create_layer(x + 50, y - 75, "Instances", obj_flecha_red);
	}
	
	if keyboard_check_pressed(ord("F")) or gamepad_button_check(4, gp_face3){
		ds_list_clear(inimigos_atingidos);
		image_index = 0;
		estado = scr_personagem_atacando;
	}
	#endregion		
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
	
	
	
	if (direc == 0) {
		sprite_index = spr_red_atack_soco_direita;
		mask_index = spr_red_atack_soco_direita_hb;
	}else if (direc == 1) {
		sprite_index = spr_red_atack_soco_esquerda;
		mask_index = spr_red_atack_soco_esquerda_hb;
	}else if (direc == 3) {
		sprite_index = spr_red_atack_soco_frente;
		mask_index = spr_red_atack_soco_frente_hb;
	}else {
		sprite_index = spr_red_atack_soco_costas;
		mask_index = spr_red_atack_soco_costas_hb;
	}
	
	

	//mask_index = spr_personagem_red_atack_hb;
	
	
	
	
	if scr_fim_da_animacao() {
		mask_index = spr_red_correndo_direita;
		estado = scr_personagem1_movendo;
	}
}
	
function scr_red_morrendo() {
	if (direc == 0) {
		sprite_index = spr_red_morrendo_direita;
		direc = 10;
	}else {
		if scr_fim_da_animacao() {instance_destroy(); estado = scr_personagem1_movendo;}	
	}
	
	if (direc == 1) {
		sprite_index = spr_red_morrendo_esquerda;
		direc = 11;
	}else {
		if scr_fim_da_animacao() {instance_destroy(); estado = scr_personagem1_movendo;}
	}
	
	if (direc == 2) {
		sprite_index = spr_red_morrendo_costas;
		direc = 12;
	}else {
		if scr_fim_da_animacao() {instance_destroy(); estado = scr_personagem1_movendo;}
	}
	
	if (direc == 3){
		sprite_index = spr_red_morrendo_frente;
		direc = 13;
	}else {
		if scr_fim_da_animacao() {instance_destroy(); estado = scr_personagem1_movendo;}
	}

	with (obj_controle) {alarm[0] = 100}
}

function scr_red_dano() {
	tomou_dano = false;
	if (direc == 0) {
		sprite_index = spr_red_dano_direita;
	}else if (direc == 1) {
		sprite_index = spr_red_dano_esquerda;
	}else if (direc == 3) {
		sprite_index = spr_red_dano_frente;
	}else {
		sprite_index = spr_red_dano_costas;
	}

	if scr_fim_da_animacao() {
		estado = scr_personagem1_movendo;
	}
}