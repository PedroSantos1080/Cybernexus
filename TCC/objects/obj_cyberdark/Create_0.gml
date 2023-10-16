/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
randomize();
_obj = [obj_red, obj_blue];
sorteio = irandom_range(0,1);


vida = 3;


hspd = -1;
vspd = -1;
dir = -1;
dir2 = -1;

spd = 3;

chance = 100;

valor = 1;

//variáveis do meu Drop

 dropa_espada = function(_chance = 50, _valor = 1){

 _valor = random(100);

if (_chance >= _valor){
	instance_create_layer(x, y, "Instances", obj_espada);
}
	 }
	 
	 
dropa_arco = function(_chance = 20, _valor = 1){
	_valor = random(100);
		
		if (_chance >= _valor){
			instance_create_layer(x, y, "Instances", obj_arco);
		}
	 }