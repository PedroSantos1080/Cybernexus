/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
randomize();
_obj = [obj_red, obj_blue];
sorteio = irandom_range(0,1);


vida = 1;
vida_anterior = vida;
tomou_dano = false;

estado = scr_dfire1_movendo;

surgimento = false;

direc = 9;
hspd = -1;
vspd = -1;
dir = -1;
dir2 = -1;

spd = 3;

chance = 100;

valor = 1;


//Variáveis do meu Drop, alterar _chance para ser mais dificil do item ser dropado
drop_espada = function(_chance = 50, _valor = 1){

	 _valor = random(100);

	if (_chance >= _valor){
		instance_create_layer(x, y, "Instances", obj_espada);
	}
}
	 
	 
drop_arco = function(_chance = 20, _valor = 1){
	
	_valor = random(100);
		
	if (_chance >= _valor){
		instance_create_layer(x, y, "Instances", obj_arco);
	}
}	 
	
	
//Drop das melhorias - Para ativar aqui, desative o spawn das melhorias no obj_controle



//drop_melhoria_dano = function(_chance = 20, _valor = 1){
	
//	_valor = random(100);
		
//	if (_chance >= _valor){
//		instance_create_layer(x, y, "Instances", obj_melhoria_dano);
//	}
//}	 
//drop_vida = function(_chance = 20, _valor = 1){
	
//	_valor = random(100);
		
//	if (_chance >= _valor){
//		instance_create_layer(x, y, "Instances", obj_vida);
//	}
//}	 
