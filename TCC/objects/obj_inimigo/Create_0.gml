/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
randomize();
_obj = [obj_personagem1, obj_personagem2];
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

 dropa_loot = function(_chance = 50, _valor = 1){

 _valor = random(100);

if (_chance >= _valor){
	instance_create_layer(x, y, "Instances", obj_dropale);
}
	 }