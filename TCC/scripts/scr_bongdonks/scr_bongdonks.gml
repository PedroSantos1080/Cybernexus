// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

//Bongdonk Nível 1
function scr_bongdonk1_movendo(){

	scr_perseguir();

    hspd = lengthdir_x(spd, dir);
    vspd = lengthdir_y(spd, dir);

    x += hspd;
    y += vspd;

if (dir >= 90 && dir < 270) {
	sprite_index = spr_bongdonk1_esquerda;
} else {
	sprite_index = spr_bongdonk1_direita;
}

if (vida < vida_anterior && !tomou_dano) {
	estado = scr_bongdonk1_dano;
	vida_anterior = vida;
	tomou_dano = true;
}


}
	
function scr_bongdonk1_dano(){
	tomou_dano = false;
	
if (dir >= 90 && dir < 270) {
	sprite_index = spr_bongdonk1_dano_esquerda;
} else {
	sprite_index = spr_bongdonk1_dano_direita;
}

	if scr_fim_da_animacao(){
		estado = scr_bongdonk1_movendo;
	}
}

function scr_bongdonk1_morrendo(){
	_chance_drop_espada = 10;
	_chance_drop_arco = 20;
	_chance_drop_dano = 9;
	_chance_drop_fogo = 7;
	_chance_drop_gelo = 7;
	_chance_drop_veneno = 7;
	_chance_drop_escudo = 20;
	_chance_drop_vida = 6;
	_dano_espada = 5;
	_dano_arco = 6;
if (dir >= 90 && dir < 270) {
	sprite_index = spr_bongdonk1_morrendo_esquerda;
} else {
	sprite_index = spr_bongdonk1_morrendo_direita;
} 
	if scr_fim_da_animacao(){
		scr_drop_arco();
		scr_drop_espada();
		scr_drop_dano();
		scr_drop_fogo();
		scr_drop_gelo();
		scr_drop_veneno();
		scr_drop_escudo();
		scr_drop_vida();
		instance_destroy(); 
		estado = scr_bongdonk1_movendo;
	}
}


//Bongdonk Nível 2
function scr_bongdonk2_movendo(){

	scr_perseguir();

    hspd = lengthdir_x(spd, dir);
    vspd = lengthdir_y(spd, dir);

    x += hspd;
    y += vspd;

if (dir >= 90 && dir < 270) {
	sprite_index = spr_bongdonk2_esquerda;
} else {
	sprite_index = spr_bongdonk2_direita;
}

if (vida < vida_anterior && !tomou_dano) {
	estado = scr_bongdonk2_dano;
	vida_anterior = vida;
	tomou_dano = true;
}
}

function scr_bongdonk2_dano(){
	tomou_dano = false;
	
if (dir >= 90 && dir < 270) {
	sprite_index = spr_bongdonk2_tomoudano_esquerda;
} else {
	sprite_index = spr_bongdonk2_tomoudano_direita;
}

	if scr_fim_da_animacao(){
		estado = scr_bongdonk2_movendo;
	}
}

function scr_bongdonk2_morrendo(){
	_chance_drop_espada = 20;
	_chance_drop_arco = 20;
	_chance_drop_dano = 9;
	_chance_drop_fogo = 7;
	_chance_drop_gelo = 7;
	_chance_drop_veneno = 7;
	_chance_drop_escudo = 20;
	_chance_drop_vida = 6;
	_dano_espada = 5;
	_dano_arco = 6;
if (dir >= 90 && dir < 270) {
	sprite_index = spr_bongdonk2_morrendo_esquerda;
} else {
	sprite_index = spr_bongdonk2_morrendo_direita;
} 
	if scr_fim_da_animacao(){
		scr_drop_arco();
		scr_drop_espada();
		scr_drop_dano();
		scr_drop_fogo();
		scr_drop_gelo();
		scr_drop_veneno();
		scr_drop_escudo();
		scr_drop_vida();
		instance_destroy(); 
		estado = scr_bongdonk2_movendo;
	}
}

//The Walkers Nível 3
function scr_bongdonk3_movendo(){
	
  	scr_perseguir();

    hspd = lengthdir_x(spd, dir);
    vspd = lengthdir_y(spd, dir);

    x += hspd;
    y += vspd;

if (dir >= 90 && dir < 270) {
	sprite_index = spr_bongdonk3_esquerda;
} else {
	sprite_index = spr_bongdonk3_direita;
}

if (vida < vida_anterior && !tomou_dano) {
	estado = scr_bongdonk3_dano;
	vida_anterior = vida;
	tomou_dano = true;
}
}

function scr_bongdonk3_dano(){
	tomou_dano = false;
	
if (dir >= 90 && dir < 270) {
	sprite_index = spr_bongdonk3_tomoudano_esquerda;
} else {
	sprite_index = spr_bongdonk3_tomoudano_direita;
}

	if scr_fim_da_animacao(){
		estado = scr_bongdonk3_movendo;
	}
}

function scr_bongdonk3_morrendo(){
	_chance_drop_espada = 20;
	_chance_drop_arco = 20;
	_chance_drop_dano = 10;
	_chance_drop_fogo = 9;
	_chance_drop_gelo = 9;
	_chance_drop_veneno = 9;
	_chance_drop_escudo = 15;
	_chance_drop_vida = 7;
	_dano_espada = 7;
	_dano_arco = 8;
	
if (dir >= 90 && dir < 270) {
	sprite_index = spr_bongdonk3_morrendo_esquerda;
} else {
	sprite_index = spr_bongdonk3_morrendo_direita;
} 
	if scr_fim_da_animacao(){
		scr_drop_arco();
		scr_drop_espada();
		scr_drop_dano();
		scr_drop_fogo();
		scr_drop_gelo();
		scr_drop_veneno();
		scr_drop_escudo();
		scr_drop_vida();
		instance_destroy(); 
		estado = scr_bongdonk3_movendo;
	}
}