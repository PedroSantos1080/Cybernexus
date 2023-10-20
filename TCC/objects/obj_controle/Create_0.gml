/// @description 
// Você pode escrever seu código neste editor
randomize();

//Espada
global.espada_red = false;
global.espada_blue = false;
global.red_pegou_espada = false;
global.blue_pegou_espada = false;

global._dano_espada_red = 0;
global._dano_espada_blue = 0;
global._dano_espada = 0;

global.red_espada_cybernetica = false;
global.blue_espada_cybernetica = false;

//Arco
global.arco_red = false;
global.arco_blue = false;

global.red_pegou_arco = false;
global.blue_pegou_arco = false;


global.dano_arco_blue = 1;
global.dano_arco_anterior_blue = 0;

global.dano_arco_red = 1;
global.dano_arco_anterior_red = 0;


//Habilidade de Superaquecimento
global.pwup_fogo_pegar_red  = false;
global.pwup_fogo_pegar_blue = false;

//Habilidade de escudo
global.escudo_blue = false;
global.escudo_red = false;

global.vida_xred = 0;
global.vida_xblue = 0;

//Habilidade de virus
global.veneno_blue = false;
global.veneno_red = false;

//Spawn Bongdonk3 e Cyberdark
global.bongdonk3 = false;
global.cyberdark = false;

_c = make_color_rgb(131, 68, 87);
_largura = display_get_gui_width();
_altura = display_get_gui_height();

// Use game_set_speed para limitar o FPS
game_set_speed(60, gamespeed_fps);


//alarm[3] = 150;
//alarm[2] = 1000;


global.pause = false;



///////////////////////////////////////////////////////////////////////////////////////////////////////////
//Variáveis do Timer

if (global.tempo == 5){
contador = new Counter(300);
inimigo = obj_thewalkers2;
}else if (global.tempo == 10){
contador = new Counter(600);
inimigo = obj_thewalkers1;
}

contador.play(); //Inicia o contador de tempo


