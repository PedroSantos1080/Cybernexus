/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

audio_group_load(audiogroup_default);
audio_stop_sound(snd_menu);
audio_play_sound(snd_batalha, 1, true);

if (global.select_padrao) {
	global.tempo = 10;
	room_goto(rm_gameplay);
} else if (global.select_rapido) {
	global.tempo = 5;
	room_goto(rm_gameplay);
}




