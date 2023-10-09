/// @description 
// Você pode escrever seu código neste editor
randomize();

_c = make_color_rgb(131, 68, 87);
_largura = display_get_gui_width();
_altura = display_get_gui_height();

// Use game_set_speed para limitar o FPS
game_set_speed(60, gamespeed_fps);


alarm[3] = 150;
alarm[2] = 1000;
alarm[5] = 600;

global.pause = false;



///////////////////////////////////////////////////////////////////////////////////////////////////////////
//Variáveis do Timer

inimigo = obj_inimigo; //Variavel que vai definir qual inimigo será criado de acordo com o tempo

contador = new Counter(600); //Cria o contador de tempo com 10 minutos

contador.play(); //Inicia o contador de tempo 

