/// @description 
// Você pode escrever seu código neste editor
randomize();
alarm[3] = 150;
alarm[2] = 1000;

global.pause = false;


///////////////////////////////////////////////////////////////////////////////////////////////////////////
//Variáveis do Timer

inimigo = obj_inimigo; //Variavel que vai definir qual inimigo será criado de acordo com o tempo

contador = new Counter(600); //Cria o contador de tempo com 10 minutos

contador.play(); //Inicia o contador de tempo 

