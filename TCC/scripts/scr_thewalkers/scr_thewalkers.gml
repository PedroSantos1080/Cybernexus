// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

//The Walkers Nível 1


function scr_thewalkers1_movendo(){
	scr_perseguir();

    hspd = lengthdir_x(spd, dir);
    vspd = lengthdir_y(spd, dir);

    x += hspd;
    y += vspd;


if (dir >= 90 && dir < 270) {
	sprite_index = spr_thewalkers1_esquerda;
} else {
	sprite_index = spr_thewalkers1_direita;
}


}

function scr_thewalkers1_morrendo(){
	_dano_espada = 2;
	_chance_drop_espada = 10;
if (dir >= 90 && dir < 270) {
	sprite_index = spr_thewalkers1_morrendo_esquerda;
} else {
	sprite_index = spr_thewalkers1_morrendo_direita;
} 
	if scr_fim_da_animacao(){
		instance_destroy(); 
		scr_drop_espada();
		estado = scr_thewalkers1_movendo;
	}
}


//The Walkers Nível 2
function scr_thewalkers2_movendo(){
	scr_perseguir();

    hspd = lengthdir_x(spd, dir);
    vspd = lengthdir_y(spd, dir);

    x += hspd;
    y += vspd;

if (dir >= 90 && dir < 270) {
	sprite_index = spr_thewalkers2_esquerda;
} else {
	sprite_index = spr_thewalkers2_direita;
}

if (vida < vida_anterior && !tomou_dano) {
	estado = scr_thewalkers2_dano;
	vida_anterior = vida;
	tomou_dano = true;
}
}

function scr_thewalkers2_dano(){
	tomou_dano = false;
	
if (dir >= 90 && dir < 270) {
	sprite_index = spr_thewalkers2_dano_esquerda;
} else {
	sprite_index = spr_thewalkers2_dano_direita;
}

	if scr_fim_da_animacao(){
		estado = scr_thewalkers2_movendo;
	}
}

function scr_thewalkers2_morrendo(){
	_dano_espada = 2;
	_chance_drop_espada = 40;
	_chance_drop_escudo = 5;
if (dir >= 90 && dir < 270) {
	sprite_index = spr_thewalkers2_morrendo_esquerda;
} else {
	sprite_index = spr_thewalkers2_morrendo_direita;
} 
	if scr_fim_da_animacao(){
		instance_destroy(); 
		scr_drop_espada();
		estado = scr_thewalkers2_movendo;
	}
}

//The Walkers Nível 3
function scr_thewalkers3_movendo(){
	scr_perseguir();

    hspd = lengthdir_x(spd, dir);
    vspd = lengthdir_y(spd, dir);

    x += hspd;
    y += vspd;

if (dir >= 90 && dir < 270) {
	sprite_index = spr_thewalkers3_esquerda;
} else {
	sprite_index = spr_thewalkers3_direita;
}

if (vida < vida_anterior && !tomou_dano) {
	estado = scr_thewalkers3_dano;
	vida_anterior = vida;
	tomou_dano = true;
}
}

function scr_thewalkers3_dano(){
	tomou_dano = false;
	
if (dir >= 90 && dir < 270) {
	sprite_index = spr_thewalkers3_dano_esquerda;
} else {
	sprite_index = spr_thewalkers3_dano_direita;
}

	if scr_fim_da_animacao(){
		estado = scr_thewalkers3_movendo;
	}
}

function scr_thewalkers3_morrendo(){
	_dano_espada = 4;
	_dano_arco = 5;
	_chance_drop_espada = 15;
	_chance_drop_arco = 20;
	_chance_drop_escudo = 7;
if (dir >= 90 && dir < 270) {
	sprite_index = spr_thewalkers3_morrendo_esquerda;
} else {
	sprite_index = spr_thewalkers3_morrendo_direita;
} 
	if scr_fim_da_animacao(){
		instance_destroy(); 
		scr_drop_espada();
		scr_drop_arco();
		estado = scr_thewalkers3_movendo;
	}
}




