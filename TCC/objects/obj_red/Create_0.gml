/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
audio_play_sound(snd_surgindo, 1, false);

image_xscale = 0.3;
image_yscale = 0.3;

enum ARMAS {
	ESPADA,
	ARCO,
	ALTURA
}

arma = 5;

global.pwup_gelo_pause_blue = false;

dano = 1;
dano_espada = 1;
_dano_espada_anterior = global._dano_espada_red;

dano_espada_cyb = 150;

//global.dano_arco_red = 1;
//global.dano_arco_anterior_red = 0;



surgimento = false;
tomou_dano = false;
_tomando_dano = false;
_congelando = false;

velocidade = 4;
col = 2;




direc = 9;



hvaloc = 0;
vveloc = 0;



alpha_hit = 0;
vida = 25;
max_vida = vida;
vida_anterior = vida; 

alarm[0] = 0;

//PwUp Veneno
danoveneno = 0.2;
danovenenototal = 0;
alarm[9] = 90000;
//PwUp Veneno

estado = scr_red_movendo;

inimigos_atingidos = ds_list_create();


