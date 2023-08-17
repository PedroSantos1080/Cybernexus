/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
audio_play_sound(snd_surgindo, 1, false);
surgimento = false;
tomou_dano = false;

velocidade = 4;
col = 2;


direc = 9;



hvaloc = 0;
vveloc = 0;



alpha_hit = 0;
vida = 3;
vida_anterior = vida; 

alarm[0] = 0;


estado = scr_red_movendo;


	
inimigos_atingidos = ds_list_create();

dano = 1;
