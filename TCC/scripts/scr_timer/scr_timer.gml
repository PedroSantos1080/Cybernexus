// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function Counter(_tempo) constructor{
 
	tempo = _tempo;
	ativo = false;
 
	//Inicia o timer
	play = function(){
		ativo = true;
	}
 
	//Pausa o timer
	pause = function(){
		ativo = false
	}
 
	//Executa o timer
	run = function(){
		if (ativo){
			tempo -= delta_time / 1000000;
		}
	}
 
	//Retorna segundos restantes
	get_tempo = function(){
		return floor(tempo);
	}
 
	//Retorna se timer esta rodando ou pausado
	get_status = function(){
		return ativo;
	}
 
}