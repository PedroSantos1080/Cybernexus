/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (sprite_index == spr_pupo_red_surgindo) {
	if (scr_fim_da_animacao()) {
		sprite_index = spr_pupo_red;	
		audio_play_sound(snd_pupo, 1,false);
		alarm[1] = 120;
	}
}

if (sprite_index == spr_pupo_red_sumindo) {
	if (scr_fim_da_animacao()) {
		instance_destroy();
	}
}


if (sprite_index == spr_pupo_blue_surgindo) {
	if (scr_fim_da_animacao()) {
		sprite_index = spr_pupo_blue;
		audio_play_sound(snd_pupo, 1,false);
		alarm[1] = 120;
	}
}

if (sprite_index == spr_pupo_blue_sumindo) {
	if (scr_fim_da_animacao()) {
		instance_destroy();
	}
}





