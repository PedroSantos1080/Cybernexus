/// @description Insert description here
// You can write your code in this editor


if (keyboard_check(ord("E"))){
	audio_play_sound(snd_equip, 1, false);
	global.arco_red = true;
	instance_destroy();
}
 








