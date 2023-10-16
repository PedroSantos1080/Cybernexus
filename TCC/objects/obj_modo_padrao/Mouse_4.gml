/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
audio_group_load(audiogroup_default);
audio_stop_sound(snd_menu);
audio_play_sound(snd_batalha, 1, true);

//global.tempo = 10;

//room_goto(rm_gameplay);

global.select_padrao = true;
global.select_rapido = false;
sprite_index = spr_padrao_select;
obj_modo_frenetico.sprite_index = spr_frenetico;


















