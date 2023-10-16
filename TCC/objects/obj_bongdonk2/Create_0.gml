/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
randomize();
image_xscale = 0.4;
image_yscale = 0.4;

_obj = [obj_red, obj_blue];
sorteio = irandom_range(0,1);


vida = 11;
dano = 1;


vida_anterior = vida;
tomou_dano = false;


surgimento = false;

estado = scr_bongdonk2_movendo;


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