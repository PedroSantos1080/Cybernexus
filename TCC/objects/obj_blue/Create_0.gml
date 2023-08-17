/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
audio_play_sound(snd_surgindo, 1, false);
surgimento = false;
tomou_dano = false;

velocidade = 4;

direc = 9;
alpha_hit = 0;
vida = 3;
vida_anterior = vida;
alarm[0] = 0;

estado = scr_blue_movendo;

inimigos_atingidos_blue = ds_list_create();

dano = 1;


_ataque = spr_personagem_blue_atack_soco;
_colis_ataque = spr_personagem_blue_atack_soco_hb;
