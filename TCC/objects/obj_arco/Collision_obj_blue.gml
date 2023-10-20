/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (keyboard_check(ord("O")) or gamepad_button_check_pressed(global.controle2, gp_face4)){
	audio_play_sound(snd_equip, 1, false);
	global.arco_blue = true;
	global.blue_pegou_arco = true;
	global.dano_arco_anterior_blue = global.dano_arco_blue;
	instance_destroy();
}


















