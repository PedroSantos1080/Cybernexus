/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
image_xscale = 0.6;
image_yscale = 0.6;

randomize();
_obj = [obj_red, obj_blue];
sorteio = irandom_range(0,1);

vida = 1;
dano = 1;


vida_anterior = vida;
tomou_dano = false;


surgimento = false;

estado = scr_thewalkers1_movendo;

hspd = -1;
vspd = -1;
dir = -1;
dir2 = -1;

spd = 3;

chance = 100;

valor = 1;

