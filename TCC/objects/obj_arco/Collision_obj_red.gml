/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(ord("E")) or gamepad_button_check_pressed(global.controle1, gp_face4)){
	audio_play_sound(snd_equip, 1, false);
	global.arco_red = true;
	global.red_pegou_arco = true;
	global.dano_arco_anterior_red = global.dano_arco_red;
	instance_destroy();
}
 








