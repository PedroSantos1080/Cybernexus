function scr_blue_movendo(){
	#region Movimentação
	audio_group_load(audiogroup_default);
	var _esquerda, _direita, _baixo, _cima, _parado,_ataque_espada, _ataque_arco;

	gamepad_set_axis_deadzone(global.controle2, 0.25);
	_esquerda = keyboard_check(vk_left) or gamepad_axis_value(global.controle2, gp_axislh) < -0.25;
	_direita = keyboard_check(vk_right) or gamepad_axis_value(global.controle2, gp_axislh) > 0.25;
	_cima = keyboard_check(vk_up) or gamepad_axis_value(global.controle2, gp_axislv) < -0.25;
	_baixo = keyboard_check(vk_down) or gamepad_axis_value(global.controle2, gp_axislv) > 0.25
	_parado = keyboard_check(vk_nokey);
	_ataque_espada = keyboard_check(ord("L"))  or gamepad_button_check(global.controle2, gp_face3);	
	_ataque_arco = keyboard_check(ord("K"))  or gamepad_button_check(global.controle2, gp_face4);
	
	global.bluebateu = false;

    if (_direita) {
        hveloc = velocidade;
        if (global.arco_blue){sprite_index = spr_blue_correndo_arco_direita;}else{sprite_index = spr_blue_correndo_direita;}
        direc = 0;
    } else if (_esquerda) {
        hveloc = -velocidade;
        if (global.arco_blue){sprite_index = spr_blue_correndo_arco_esquerda;}else{sprite_index = spr_blue_correndo_esquerda;}
        direc = 1;
    } else {
        hveloc = 0;
	if direc == 0 {
		if (global.arco_blue){sprite_index = spr_blue_arco_direita;}else {sprite_index = spr_blue_parado_direita;}		
	} else if direc == 1{			
		if (global.arco_blue){sprite_index = spr_blue_arco_esquerda;}else {sprite_index = spr_blue_parado_esquerda;}		
	}		
    }

   if (_cima) {
	   if (global.arco_blue){sprite_index = spr_blue_correndo_arco_costas;}else {sprite_index = spr_blue_correndo_costas;}
        vveloc = -velocidade;
		 direc = 2;
    } else if (_baixo) {
		if (global.arco_blue){sprite_index = spr_blue_correndo_arco_frente;}else{sprite_index = spr_blue_correndo_frente;}
        vveloc = velocidade;
		 direc = 3;
    } else {
        vveloc = 0;
		if direc == 2 {
		if (global.arco_blue){sprite_index = spr_blue_arco_costas;}else {sprite_index = spr_blue_parado_costas;}
	} else if direc == 3{			
		if (global.arco_blue){sprite_index = spr_blue_arco_frente;}else {sprite_index = spr_blue_parado_frente;}		
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
	
	
//POWERUP DE GELO
	if (tomou_dano = true) && (global.redbateu = true) && (global.pwup_gelo_pause_red = true) {
		audio_play_sound(snd_travamento, 1, false);
		global.pwup_gelo_pause_red = false;
		alarm[10] = 1;
	
		if(estado = scr_blue_congelado) && (vida <= 0){
			estado = scr_blue_morrendo;
	}
		
}
	
	//POWER UP DE FOGO
	if (keyboard_check_pressed(ord("L")) > 0 && global.pwup_fogo_pegar_blue == true) {
		global.pwup_fogo_pegar_blue = false;
		ds_list_clear(inimigos_atingidos_blue);
		image_index = 0;
		estado = scr_blue_atacando;
		audio_play_sound(snd_soco, 1, false);
		if (direc = 0) {
			instance_create_layer(x + 150, y - 5, "Lava", obj_fogo_habblue);
		}else if (direc = 1) {
			instance_create_layer(x - 150, y - 5, "Lava", obj_fogo_habblue);
		}else if (direc = 2) {
			instance_create_layer(x - 1, y - 100, "Lava", obj_fogo_habblue);
		}else if (direc = 3) {
			instance_create_layer(x - 1, y + 50, "Lava", obj_fogo_habblue);
		}
	}
	
//POWERUP DO ESCUDO	
	if (vida < vida_anterior && tomou_dano == true) {
		if (global.escudo_blue == true){
			vida += 1;
			global.escudo_blue = false;
	}
		tomou_dano = true;
		estado = scr_blue_dano;
		vida_anterior = vida;
	}
	
//POWERUP DE VENENO
	if (global.veneno_red) && (global.redbateu) && (tomou_dano == true) {
		audio_play_sound(snd_virus, 1, false);
		global.veneno_red = false;
		alarm[9] = 1;
	}
	
//ARCO	
	if (_ataque_arco && global.arco_blue == true) {
		global.arco_blue = false;
		alarm[3] = 120;//Tempo de recarga.
		estado = scr_blue_atirando_arco;
	}
	
//ESPADA
	if (_ataque_espada) {
		global.bluebateu = true;
		ds_list_clear(inimigos_atingidos_blue);
		image_index = 0;
		estado = scr_blue_atacando;
		mask_index = _colis_ataque;
		audio_play_sound(snd_soco, 1, false);
	}
	
	
}

function scr_blue_atacando() {
//ATAQUE EM INIMIGOS
	var inimigos_na_hitbox = ds_list_create();
	
    var inimigo1 = instance_place_list(x, y, obj_inimigo, inimigos_na_hitbox, false);
	var inimigo2 = instance_place_list(x, y, obj_inimigo2, inimigos_na_hitbox, false);
	var inimigo3 = instance_place_list(x, y, obj_inimigo3, inimigos_na_hitbox, false);
	var inimigo4 = instance_place_list(x, y, obj_boss, inimigos_na_hitbox, false);
	var inimigos = inimigo1 or inimigo2 or inimigo3 or inimigo4;


	if (inimigos) > 0 {
		for (var i = 0; i < inimigos; i++) {
			var inimigoID = inimigos_na_hitbox[| i];
			
			if (ds_list_find_index(inimigos_atingidos_blue, inimigoID)) == -1 {
				ds_list_add(inimigos_atingidos_blue, inimigoID);
				
				with(inimigoID) {
					 vida -= other.dano;
					var _inst = instance_create_layer(x, y, "Personagem_blue", obj_dano);
					_inst.alvo = other;
					_inst.dano = obj_blue.dano;
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
					obj_cristal_red.vida -= obj_blue.dano;
					var _inst = instance_create_layer(x, y, "Cristal_red", obj_dano);
					_inst.alvo = other;
					_inst.dano = obj_blue.dano;
				}
			}
		}
	}
	
///////////////////////////////////////////////////////////////////////////////////////////////////
//ATAQUE NO PERSONAGEM
	var ataque = instance_place_list(x,y, obj_red, inimigos_na_hitbox, false);
	if (ataque) > 0 {
		for (var i = 0; i < ataque; i++) {
			var inimigoID = inimigos_na_hitbox[| i];
			
			if (ds_list_find_index(inimigos_atingidos_blue, inimigoID)) == -1 {
				ds_list_add(inimigos_atingidos_blue, inimigoID);
				
			with(inimigoID) {
					obj_red.vida -= obj_blue.dano;
					var _inst = instance_create_layer(x, y, "Personagem_red", obj_dano);
					_inst.alvo = other;
					_inst.dano = obj_blue.dano;
					tomou_dano = true;
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
		estado = scr_blue_movendo;
	}
	


}

function scr_blue_morrendo() {
	if (direc == 0) {
		if (global.arco_blue){sprite_index = spr_blue_morrendo_arco_direita;}else{sprite_index = spr_blue_morrendo_direita;}
		direc = 10;
	}else {
		if scr_fim_da_animacao() {instance_destroy(); estado = scr_blue_movendo;}	
	}
	
	if (direc == 1) {
		if (global.arco_blue){sprite_index = spr_blue_morrendo_arco_esquerda;}else{sprite_index = spr_blue_morrendo_esquerda;}
		direc = 11;
	}else {
		if scr_fim_da_animacao() {instance_destroy(); estado = scr_blue_movendo;}
	}
	
	if (direc == 2) {
		if (global.arco_blue){sprite_index = spr_blue_morrendo_arco_costas;}else {sprite_index = spr_blue_morrendo_costas;}
		direc = 12;
	}else {
		if scr_fim_da_animacao() {instance_destroy(); estado = scr_blue_movendo;}
	}
	
	if (direc == 3){
		if (global.arco_blue){sprite_index = spr_blue_morrendo_arco_frente;}else {sprite_index = spr_blue_morrendo_frente;}
		direc = 13;
	}else {
		if scr_fim_da_animacao() {instance_destroy(); estado = scr_blue_movendo;}
	}

	with (obj_controle) {alarm[1] = 100}
}

function scr_blue_dano() {
	tomou_dano = false;
	if (direc == 0) {
		if (global.arco_blue){sprite_index = spr_blue_dano_arco_direita;}else {sprite_index = spr_blue_dano_direita;}
	}else if (direc == 1) {
		if (global.arco_blue){sprite_index = spr_blue_dano_arco_esquerda;}else {sprite_index = spr_blue_dano_esquerda;}
	}else if (direc == 3) {
		if (global.arco_blue){sprite_index = spr_blue_dano_arco_frente;}else {sprite_index = spr_blue_dano_frente;}
	}else {
		if (global.arco_blue){sprite_index = spr_blue_dano_arco_costas;}else {sprite_index = spr_blue_dano_costas;}
	}

	if scr_fim_da_animacao() {
		estado = scr_blue_movendo;
	}
}
	
function scr_blue_perdendo() {
	
	if (direc == 0) {
		if (global.arco_red){sprite_index = spr_red_perdendo_arco_direita;}else {sprite_index = spr_red_perdendo_direita;}
	}else if (direc == 1) {
		if (global.arco_red){sprite_index = spr_red_perdendo_arco_esquerda;}else {sprite_index = spr_red_perdendo_esquerda;}
	}else if (direc == 3) {
		if (global.arco_red){sprite_index = spr_red_perdendo_arco_frente;}else {sprite_index = spr_red_perdendo_frente;}
	}else {
		if (global.arco_red){sprite_index = spr_red_perdendo_arco_costas;}else {sprite_index = spr_red_perdendo_costas;}
	}
	

	if scr_fim_da_animacao() {
		room_goto(rm_vitoria_red);
	}
	

	

}
	
	
function scr_blue_atirando_arco() {

	if (direc == 0) {
		sprite_index = spr_blue_atacando_arco_direita;
	}else if (direc == 1) {
		sprite_index = spr_blue_atacando_arco_esquerda;
	}else if (direc == 3) {
		sprite_index = spr_blue_atacando_arco_frente;
	}else {
		sprite_index = spr_blue_atacando_arco_costas;
	}


	if scr_fim_da_animacao() {
		alarm[4] = 30;// Distancia da flecha.

		 
		 audio_play_sound(snd_tiro, 1, false);
		if (direc == 0) {
			instance_create_layer(x + 100, y - 65, "Instances", obj_flecha_blue);		
		}else if (direc == 1) {
			instance_create_layer(x + 100, y - 65, "Instances", obj_flecha_blue);
		}else if (direc == 3) {
			instance_create_layer(x , y - 90, "Instances", obj_flecha_blue);
		}else {
			instance_create_layer(x , y - 110, "Instances", obj_flecha_blue);
		}

		estado = scr_blue_movendo;
	}

}	
	
	
function scr_blue_congelado(){
	image_index = 4;
}