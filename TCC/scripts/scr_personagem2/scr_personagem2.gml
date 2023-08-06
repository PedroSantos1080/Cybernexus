function scr_personagem2_movendo(){
	#region Movimentação
	var _esquerda, _direita, _baixo, _cima, _parado

	gamepad_set_axis_deadzone(5, 0.25);
	_esquerda = keyboard_check(vk_left) or gamepad_axis_value(5, gp_axislh) < -0.25;
	_direita = keyboard_check(vk_right) or gamepad_axis_value(5, gp_axislh) > 0.25;
	_cima = keyboard_check(vk_up) or gamepad_axis_value(5, gp_axislv) < -0.25;
	_baixo = keyboard_check(vk_down) or gamepad_axis_value(5, gp_axislv) > 0.25
	_parado = keyboard_check(vk_nokey);

    if (_direita) {
        hveloc = velocidade;
        sprite_index = spr_blue_correndo_direita;
        direc = 0;
    } else if (_esquerda) {
        hveloc = -velocidade;
        sprite_index = spr_blue_correndo_esquerda;
        direc = 1;
    } else {
        hveloc = 0;
	if direc == 0 {
		sprite_index = spr_blue_parado_direita;
	} else if direc == 1{			
		sprite_index = spr_blue_parado_esquerda;
	}		
    }

   if (_cima) {
	   sprite_index = spr_blue_correndo_costas;
        vveloc = -velocidade;
		 direc = 2;
    } else if (_baixo) {
		sprite_index = spr_blue_correndo_frente;
        vveloc = velocidade;
		 direc = 3;
    } else {
        vveloc = 0;
		if direc == 2 {
		sprite_index = spr_blue_parado_costas;
	} else if direc == 3{			
		sprite_index = spr_blue_parado_frente;
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
	
	if (vida < vida_anterior && !tomou_dano) {
		estado = scr_blue_dano;
		vida_anterior = vida;
		tomou_dano = true;
	}
	
	
	if (keyboard_check_pressed(ord("K")) > 0 && global.arco_blue == true) {
		global.arco_blue = false;
		alarm[4] = 50;// Distancia da flecha.
		alarm[3] = 120;//Tempo de recarga.
		instance_create_layer(x + 50, y - 75, "Instances", obj_flecha_blue);
	}
	
	if keyboard_check_pressed(ord("L")) or gamepad_button_check(5, gp_face3) {
		ds_list_clear(inimigos_atingidos_blue);
		image_index = 0;
		estado = scr_personagem2_atacando;
		mask_index = _colis_ataque;
	}
	
	
}

function scr_personagem2_atacando() {
//ATAQUE EM INIMIGOS
	var inimigos_na_hitbox = ds_list_create();
	
	var inimigos = instance_place_list(x,y, obj_inimigo, inimigos_na_hitbox, false);
	if (inimigos) > 0 {
		for (var i = 0; i < inimigos; i++) {
			var inimigoID = inimigos_na_hitbox[| i];
			
			if (ds_list_find_index(inimigos_atingidos_blue, inimigoID)) == -1 {
				ds_list_add(inimigos_atingidos_blue, inimigoID);
				
				with(inimigoID) {
					 vida -= other.dano;
					var _inst = instance_create_layer(x, y, "Personagem_blue", obj_dano);
					_inst.alvo = other;
					_inst.dano = obj_personagem2.dano;
				}
			}
		}
	}
///////////////////////////////////////////////////////////////////////////////////////////////////
//ATAQUE NO CRISTAL
	var cristal = instance_place_list(x,y, obj_cristal_red, inimigos_na_hitbox, false);
	if (cristal) > 0 {
		for (var i = 0; i < cristal; i++) {
			var inimigoID = inimigos_na_hitbox[| i];
			
			if (ds_list_find_index(inimigos_atingidos_blue, inimigoID)) == -1 {
				ds_list_add(inimigos_atingidos_blue, inimigoID);
				
				with(inimigoID) {
					obj_cristal_red.vida -= obj_personagem2.dano;
					var _inst = instance_create_layer(x, y, "Cristal_red", obj_dano);
					_inst.alvo = other;
					_inst.dano = obj_personagem2.dano;
				}
			}
		}
	}
	
///////////////////////////////////////////////////////////////////////////////////////////////////
//ATAQUE NO PERSONAGEM
	var ataque = instance_place_list(x,y, obj_personagem1, inimigos_na_hitbox, false);
	if (ataque) > 0 {
		for (var i = 0; i < ataque; i++) {
			var inimigoID = inimigos_na_hitbox[| i];
			
			if (ds_list_find_index(inimigos_atingidos_blue, inimigoID)) == -1 {
				ds_list_add(inimigos_atingidos_blue, inimigoID);
				
			with(inimigoID) {
					obj_personagem1.vida -= obj_personagem2.dano;
					var _inst = instance_create_layer(x, y, "Personagem_red", obj_dano);
					_inst.alvo = other;
					_inst.dano = obj_personagem2.dano;
				}
			}
		}
	}
	
	
	ds_list_destroy(inimigos_na_hitbox);
	
	if (direc == 0) {
		sprite_index = spr_blue_atack_soco_direita;
		mask_index = spr_blue_atack_soco_direita_hb;
	}else if (direc == 1) {
		sprite_index = spr_blue_atack_soco_esquerda;
		mask_index = spr_blue_atack_soco_esquerda_hb;
	}else if (direc == 3) {
		sprite_index = spr_blue_atack_soco_frente;
		mask_index = spr_blue_atack_soco_frente_hb;
	}else {
		sprite_index = spr_blue_atack_soco_costas;
		mask_index = spr_blue_atack_soco_costas_hb;
	}
	
	
	
	
	
	if scr_fim_da_animacao() {
		mask_index = spr_blue_correndo_esquerda;
		estado = scr_personagem2_movendo;
	}
	


}


function scr_blue_morrendo() {
	if (direc == 0) {
		sprite_index = spr_blue_morrendo_direita;
		direc = 10;
	}else {
		if scr_fim_da_animacao() {instance_destroy(); estado = scr_personagem2_movendo;}	
	}
	
	if (direc == 1) {
		sprite_index = spr_blue_morrendo_esquerda;
		direc = 11;
	}else {
		if scr_fim_da_animacao() {instance_destroy(); estado = scr_personagem2_movendo;}
	}
	
	if (direc == 2) {
		sprite_index = spr_blue_morrendo_costas;
		direc = 12;
	}else {
		if scr_fim_da_animacao() {instance_destroy(); estado = scr_personagem2_movendo;}
	}
	
	if (direc == 3){
		sprite_index = spr_blue_morrendo_frente;
		direc = 13;
	}else {
		if scr_fim_da_animacao() {instance_destroy(); estado = scr_personagem2_movendo;}
	}

	with (obj_controle) {alarm[1] = 100}
}


function scr_blue_dano() {
	tomou_dano = false;
	if (direc == 0) {
		sprite_index = spr_blue_dano_direita;
	}else if (direc == 1) {
		sprite_index = spr_blue_dano_esquerda;
	}else if (direc == 3) {
		sprite_index = spr_blue_dano_frente;
	}else {
		sprite_index = spr_blue_dano_costas;
	}

	if scr_fim_da_animacao() {
		estado = scr_personagem2_movendo;
	}
}