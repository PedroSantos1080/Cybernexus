/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
audio_play_sound(snd_surgindo, 1, false);
global.pwup_gelo_pause_red = false;


enum ARMAS2 {
	ESPADA2,
	ARCO2,
	ALTURA2
}

arma = 5;

dano = 1;
dano_espada = 1;
_dano_espada_anterior = 0;

global.dano_arco_blue = 1;
global.dano_arco_anterior_blue = 0;


//PwUp Veneno
danoveneno = 0.2;
danovenenototal = 0;
alarm[9] = 90000;
//PwUp Veneno


surgimento = false;
tomou_dano = false;

velocidade = 4;

direc = 9;
alpha_hit = 0;
vida = 25;
max_vida = vida;
vida_anterior = vida;
alarm[0] = 0;

estado = scr_blue_movendo;

inimigos_atingidos_blue = ds_list_create();



_ataque = spr_personagem_blue_atack_soco;
_colis_ataque = spr_personagem_blue_atack_soco_hb;
