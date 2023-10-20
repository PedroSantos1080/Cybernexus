/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
	gamepad_set_axis_deadzone(global.controle1, 0.25);
  var _esquerda = keyboard_check_pressed(ord("A")) or gamepad_button_check_pressed(global.controle1, gp_padl);
  var _direita = keyboard_check_pressed(ord("D")) or gamepad_button_check_pressed(global.controle1, gp_padr);
  var _cima = keyboard_check_pressed(ord("W")) or gamepad_button_check_pressed(global.controle1, gp_padu);
  var _baixo = keyboard_check_pressed(ord("S")) or gamepad_button_check_pressed(global.controle1, gp_padd);
  var _enter = keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(global.controle1, gp_face1);
	
	
		if (_esquerda) {
				creditos -= 1;
				
			}
	
			if (_direita) {
				creditos += 1;
				audio_play_sound(snd_select_menu, 0, false);
			}
	
			if (creditos >= CREDITOS.ALTURA) {
				creditos = 0;
			}else if (creditos < 0) {
				creditos = CREDITOS.ALTURA -1;
			}
			
			if (creditos == 0) {
				sprite_index = spr_tela_creditos_1_1;
			}
			
			if (creditos == 1) {
				sprite_index = spr_tela_creditos_2_1;
			}

			if (creditos == 2) {
				sprite_index = spr_tela_creditos_3_1;
			}

			if (creditos == 3) {
				sprite_index = spr_tela_creditos_4_1;
			}












