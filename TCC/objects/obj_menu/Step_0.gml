//audio_group_load(audiogroup_default);
//audio_play_sound(snd_menu, 10, true);


    var _esquerda, _direita, _baixo, _cima, _enter;

	gamepad_set_axis_deadzone(global.controle1, 0.25);
    _esquerda = keyboard_check_pressed(ord("A")) or gamepad_button_check_pressed(global.controle1, gp_padl);
    _direita = keyboard_check_pressed(ord("D")) or gamepad_button_check_pressed(global.controle1, gp_padr);
    _cima = keyboard_check_pressed(ord("W")) or gamepad_button_check_pressed(global.controle1, gp_padu);
    _baixo = keyboard_check_pressed(ord("S")) or gamepad_button_check_pressed(global.controle1, gp_padd);
	_enter = keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(global.controle1, gp_face1);
	
	
	if (room == rm_menu_modo){
	
		if (_cima) {
			menu -= 1;
		}
	
		if (_baixo) {
			menu += 1;
		}
	
		if (menu >= MENU.ALTURA) {
			menu = 0;
		}else if (menu < 0) {
			menu = MENU.ALTURA -1;
		}

		if (menu == 0) {
			global.select_duelo = true;
			global.select_config = false;	
			global.select_creditos = false;
			global.select_solo = false;
			global.select_tutorial = false;
			if (_enter) {room_goto(rm_selecao_tempo);}
		}
	
		if (menu == 1) {
			global.select_duelo = false;
			global.select_config = false;	
			global.select_creditos = false;
			global.select_solo = true;
			global.select_tutorial = false;
			if (_enter) {room_goto(rm_selecao_personagem);}
		}
	
		if (menu == 2) {
			global.select_duelo = false;
			global.select_config = false;	
			global.select_creditos = false;
			global.select_solo = false;
			global.select_tutorial = true;
		}
	
		if (menu == 3) {
			global.select_duelo = false;
			global.select_config = false;	
			global.select_creditos = true;
			global.select_solo = false;
			global.select_tutorial = false;
			if (_enter) {room_goto(rm_creditos);}
		}
	
		if (menu == 4) {
			global.select_duelo = false;
			global.select_config = true;	
			global.select_creditos = false;
			global.select_solo = false;
			global.select_tutorial = false;
			if (_enter) {room_goto(rm_configurar);}
		}

	}	
	
	if (room == rm_selecao_tempo) {
		if (_esquerda) {
				modos -= 1;
			}
	
			if (_direita) {
				modos += 1;
			}
	
			if (modos >= MODOS.QTD) {
				modos = 0;
			}else if (modos < 0) {
				modos = MODOS.QTD -1;
			}
			
			if (modos == 0) {
				global.select_padrao = true;
				global.select_rapido = false;
				if (_enter) {room_goto(rm_carregamento);}
			}
			
			if (modos == 1) {
				global.select_padrao = false;
				global.select_rapido = true;
				if (_enter) {room_goto(rm_carregamento);}
			}
	}