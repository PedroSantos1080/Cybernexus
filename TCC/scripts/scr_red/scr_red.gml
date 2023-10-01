function scr_red_movendo() {
	audio_stop_sound(snd_espada);
	//audio_stop_sound(snd_tiro);

	#region Movimentação
	
    var _esquerda, _direita, _baixo, _cima, _parado, _ataque_espada, _ataque_arco

	global.redbateu = false;

	gamepad_set_axis_deadzone(4, 0.25);
    _esquerda = keyboard_check(ord("A")) or gamepad_axis_value(4, gp_axislh) < -0.25;
    _direita = keyboard_check(ord("D")) or gamepad_axis_value(4, gp_axislh) > 0.25;
    _cima = keyboard_check(ord("W")) or gamepad_axis_value(4, gp_axislv) < -0.25;
    _baixo = keyboard_check(ord("S")) or gamepad_axis_value(4, gp_axislv) > 0.25;
    _parado = keyboard_check(vk_nokey);
	_ataque_espada = keyboard_check(ord("F"))  or gamepad_button_check(4, gp_face3);
	_ataque_arco = keyboard_check(ord("G"))  or gamepad_button_check(4, gp_face4);
	

    
    if (_direita) {
        hveloc = velocidade;
	   if (global.arco_red){sprite_index = spr_red_correndo_arco_direita;}else{sprite_index = spr_red_correndo_direita;}
        //Verifica se o personagem está com o arco, caso esteja, muda de sprite
        direc = 0;						
    } else if (_esquerda) {
	   if (global.arco_red){sprite_index = spr_red_correndo_arco_esquerda;}else{sprite_index = spr_red_correndo_esquerda;}
	   //Verifica se o personagem está com o arco, caso esteja, muda de sprite
        hveloc = -velocidade;
        
        direc = 1;												
    } else {
        hveloc = 0;
	if direc == 0 {
	   if (global.arco_red){sprite_index = spr_red_arco_direita;}else {sprite_index = spr_red_parado_direita;}		
	   //Verifica se o personagem está com o arco, caso esteja, muda de sprite
	} else if direc == 1{
		if (global.arco_red){sprite_index = spr_red_arco_esquerda;}else {sprite_index = spr_red_parado_esquerda;}		
		//Verifica se o personagem está com o arco, caso esteja, muda de sprite
	}		
    }

   if (_cima) {
	   if (global.arco_red){sprite_index = spr_red_correndo_arco_costas;}else {sprite_index = spr_red_correndo_costas;}
	   //Verifica se o personagem está com o arco, caso esteja, muda de sprite
        vveloc = -velocidade;
		 direc = 2;
    } else if (_baixo) {
	   if (global.arco_red){sprite_index = spr_red_correndo_arco_frente;}else{sprite_index = spr_red_correndo_frente;}
	   //Verifica se o personagem está com o arco, caso esteja, muda de sprite
        vveloc = velocidade;
		 direc = 3;
    } else {
        vveloc = 0;
		if direc == 2 {
			if (global.arco_red){sprite_index = spr_red_arco_costas;}else {sprite_index = spr_red_parado_costas;}
			//Verifica se o personagem está com o arco, caso esteja, muda de sprite
		
	} else if direc == 3{			
		if (global.arco_red){sprite_index = spr_red_arco_frente;}else {sprite_index = spr_red_parado_frente;}		
		//Verifica se o personagem está com o arco, caso esteja, muda de sprite
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
	
//POWERUP DE GELO
if (tomou_dano = true) && (global.bluebateu = true) && (global.pwup_gelo_pause_blue = true) {
	
	global.pwup_gelo_pause_blue = false;
	alarm[10] = 1;
	
	
	if(estado = scr_red_congelado) && (vida <= 0){
		estado = scr_red_morrendo;
	}
		
}
	
//POWERUP DE FOGO
	if (keyboard_check_pressed(ord("F")) > 0 && global.pwup_fogo_pegar_red == true) {
		global.pwup_fogo_pegar_red = false;
		ds_list_clear(inimigos_atingidos);
		image_index = 0;
		estado = scr_red_atacando;
		audio_play_sound(snd_soco, 1, false);
		if (direc = 0) {
			instance_create_layer(x + 150, y - 75, "Lava", obj_fogo_habred);
		}else if (direc = 1) {
			instance_create_layer(x - 150, y - 75, "Lava", obj_fogo_habred);
		}else if (direc = 2) {
			instance_create_layer(x - 1, y - 200, "Lava", obj_fogo_habred);
		}else if (direc = 3) {
			instance_create_layer(x - 1, y - 5, "Lava", obj_fogo_habred);
		}
	}
	
//POWERUP ESCUDO

	if (vida < vida_anterior && tomou_dano == true) {
		if (global.escudo_red == true){
			vida += 1;
			global.escudo_red = false;
		}
		tomou_dano = true;
		estado = scr_red_dano;
		vida_anterior = vida;
	}
	
//POWERUP DE VENENO

	if (global.veneno_blue) && (global.bluebateu) && (tomou_dano == true) {
		global.veneno_blue = false;
		alarm[9] = 1;
	}


//ARCO
	if (_ataque_arco && global.arco_red == true) {
		global.arco_red = false;
		alarm[3] = 120;//Tempo de recarga.
		estado = scr_red_atirando_arco;
	}

//ESPADA
	if (_ataque_espada)  {
		global.redbateu = true;
		ds_list_clear(inimigos_atingidos);
		image_index = 0;
		estado = scr_red_atacando;
		audio_play_sound(snd_soco, 1, false);
	}
	#endregion		
}

function scr_red_atacando() {

	
	
	
    //ATAQUE EM INIMIGOS

    var inimigos_na_hitbox = ds_list_create();
	
    var inimigo1 = instance_place_list(x, y, obj_inimigo, inimigos_na_hitbox, false);
	var inimigo2 = instance_place_list(x, y, obj_inimigo2, inimigos_na_hitbox, false);
	var inimigo3 = instance_place_list(x, y, obj_inimigo3, inimigos_na_hitbox, false);
	var inimigo4 = instance_place_list(x, y, obj_boss, inimigos_na_hitbox, false);
	var inimigos = inimigo1 or inimigo2 or inimigo3 or inimigo4;
    

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
                    _inst.dano = obj_red.dano;
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
					obj_cristal_blue.vida -= obj_red.dano;
					var _inst = instance_create_layer(x, y, "Cristal_blue", obj_dano);
					_inst.alvo = other;
					_inst.dano = obj_red.dano;
				}
			}
		}
	}
	
///////////////////////////////////////////////////////////////////////////////////////////////////
//ATAQUE NO PERSONAGEM
	var ataque = instance_place_list(x,y, obj_blue, inimigos_na_hitbox, false);
	if (ataque) > 0 {
		for (var i = 0; i < ataque; i++) {
			var inimigoID = inimigos_na_hitbox[| i];
			
			if (ds_list_find_index(inimigos_atingidos, inimigoID)) == -1 {
				ds_list_add(inimigos_atingidos, inimigoID);
				
				with(inimigoID) {
					
					
					obj_blue.vida -= obj_red.dano;
					var _inst = instance_create_layer(x, y, "Personagem_blue", obj_dano);
					_inst.alvo = other;
					_inst.dano = obj_red.dano;
					tomou_dano = true;
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
	
	
	if scr_fim_da_animacao() {
		mask_index = spr_red_correndo_direita;
		estado = scr_red_movendo;
	}
}
	
	
function scr_red_morrendo() {
	if (direc == 0) {
		if (global.arco_red){sprite_index = spr_red_morrendo_arco_direita;}else {sprite_index = spr_red_morrendo_direita;}
	
		direc = 10;
	}else {
		if scr_fim_da_animacao() {instance_destroy(); estado = scr_red_movendo;}	
	}
	
	if (direc == 1) {
		if (global.arco_red){sprite_index = spr_red_morrendo_arco_esquerda;}else {sprite_index = spr_red_morrendo_esquerda;}
		
		direc = 11;
	}else {
		if scr_fim_da_animacao() {instance_destroy(); estado = scr_red_movendo;}
	}
	
	if (direc == 2) {
		if (global.arco_red){sprite_index = spr_red_morrendo_arco_costas;}else {sprite_index = spr_red_morrendo_costas;}
		
		direc = 12;
	}else {
		if scr_fim_da_animacao() {instance_destroy(); estado = scr_red_movendo;}
	}
	
	if (direc == 3){
		if (global.arco_red){sprite_index = spr_red_morrendo_arco_frente;}else {sprite_index = spr_red_morrendo_frente;}
		
		direc = 13;
	}else {
		if scr_fim_da_animacao() {instance_destroy(); estado = scr_red_movendo;}
	}

	with (obj_controle) {alarm[0] = 100}
}

function scr_red_dano() {
	tomou_dano = false;
	if (direc == 0) {
		if (global.arco_red){sprite_index = spr_red_dano_arco_direita;}else {sprite_index = spr_red_dano_direita;}
	}else if (direc == 1) {
		if (global.arco_red){sprite_index = spr_red_dano_arco_esquerda;}else {sprite_index = spr_red_dano_esquerda;}
	}else if (direc == 3) {
		if (global.arco_red){sprite_index = spr_red_dano_arco_frente;}else {sprite_index = spr_red_dano_frente;}
	}else {
		if (global.arco_red){sprite_index = spr_red_dano_arco_costas;}else {sprite_index = spr_red_dano_costas;}
	}

	if scr_fim_da_animacao() {
		estado = scr_red_movendo;
	}
}

function scr_perdendo() {
	
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
		room_goto(rm_vitoria_blue);
	}
	
}

function scr_red_atirando_arco() {

	if (direc == 0) {
		sprite_index = spr_red_atacando_arco_direita;
	}else if (direc == 1) {
		sprite_index = spr_red_atacando_arco_esquerda;
	}else if (direc == 3) {
		sprite_index = spr_red_atacando_arco_frente;
	}else {
		sprite_index = spr_red_atacando_arco_costas;
	}


	if scr_fim_da_animacao() {
		alarm[4] = 30;// Distancia da flecha.

		 
		 audio_play_sound(snd_tiro, 1, false);
		if (direc == 0) {
			instance_create_layer(x + 100, y - 65, "Instances", obj_flecha_red);		
		}else if (direc == 1) {
			instance_create_layer(x - 10, y - 65, "Instances", obj_flecha_red);
		}else if (direc == 3) {
			instance_create_layer(x , y - 90, "Instances", obj_flecha_red);
		}else {
			instance_create_layer(x , y - 110, "Instances", obj_flecha_red);
		}

		estado = scr_red_movendo;
	}

}
	
function scr_red_congelado(){
	image_index = 4;
}
