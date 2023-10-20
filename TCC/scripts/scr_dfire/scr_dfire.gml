// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

//D-Fire Nível 1

function scr_dfire1_movendo(){
	scr_perseguir();
   

    hspd = lengthdir_x(spd, dir);
    vspd = lengthdir_y(spd, dir);

    x += hspd;
    y += vspd;

if (dir >= 90 && dir < 270) {
	sprite_index = spr_dfire1_esquerda;
} else {
	sprite_index = spr_dfire1_direita;
}


}

function scr_dfire1_morrendo(){
_chance_drop_espada = 20;
_chance_drop_arco = 15;
_dano_espada = 4;
_dano_arco = 5;
_chance_drop_escudo = 10;
if (dir >= 90 && dir < 270) {
	sprite_index = spr_dfire1_morrendo_esquerda;
} else {
	sprite_index = spr_dfire1_morrendo_direita;
}
	if scr_fim_da_animacao(){
		instance_destroy(); 
		scr_drop_espada();
		scr_drop_arco();
		scr_drop_escudo();
		estado = scr_dfire1_movendo;
	}
}

//D-Fire Nível 2
function scr_dfire2_movendo(){

    scr_perseguir();

    hspd = lengthdir_x(spd, dir);
    vspd = lengthdir_y(spd, dir);

    x += hspd;
    y += vspd;

if (dir >= 90 && dir < 270) {
	sprite_index = spr_dfire2_esquerda;
} else {
	sprite_index = spr_dfire2_direita;
}

if (vida < vida_anterior && !tomou_dano) {
	estado = scr_dfire2_dano;
	vida_anterior = vida;
	tomou_dano = true;
}

}
	
function scr_dfire2_dano(){
	tomou_dano = false;
	
if (dir >= 90 && dir < 270) {
	sprite_index = spr_dfire2_tomoudano_esq;
} else {
	sprite_index = spr_dfire2_tomoudano_dir;
}

	if scr_fim_da_animacao(){
		estado = scr_dfire2_movendo;
	}
}

function scr_dfire2_morrendo(){
	_chance_drop_espada = 20;
	_chance_drop_arco = 20;
	_chance_drop_dano = 7;
	_chance_drop_fogo = 5;
	_chance_drop_gelo = 5;
	_chance_drop_veneno = 5;
	_chance_drop_escudo = 12;
	_chance_drop_vida = 5;
	_dano_espada = 4;
	_dano_arco = 5;
if (dir >= 90 && dir < 270) {
	sprite_index = spr_dfire2_morrendo_esquerda;
} else {
	sprite_index = spr_dfire2_morrendo_direita;
}
		
	if scr_fim_da_animacao(){
		//script_execute(scr_drops());
		scr_drop_arco();
		scr_drop_espada();
		scr_drop_dano();
		scr_drop_fogo();
		scr_drop_gelo();
		scr_drop_veneno();
		scr_drop_escudo();
		scr_drop_vida();
		
		instance_destroy(); 
		estado = scr_dfire2_movendo;
	}
}
	
//D-Fire Nível 3
function scr_dfire3_movendo(){

  
  	scr_perseguir();

    hspd = lengthdir_x(spd, dir);
    vspd = lengthdir_y(spd, dir);

    x += hspd;
    y += vspd;
	
if (dir >= 90 && dir < 270) {
	sprite_index = spr_dfire3_esquerda;
} else {
	sprite_index = spr_dfire3_direita;
}

if (vida < vida_anterior && !tomou_dano) {
	estado = scr_dfire3_dano;
	vida_anterior = vida;
	tomou_dano = true;
}

}
	
function scr_dfire3_dano(){
	tomou_dano = false;
	
if (dir >= 90 && dir < 270) {
	sprite_index = spr_dfire3_tomoudano_esq;
} else {
	sprite_index = spr_dfire3_tomoudano_dir;
}
	
	if scr_fim_da_animacao(){
		estado = scr_dfire3_movendo;
	}
}

function scr_dfire3_morrendo(){
	_chance_drop_espada = 25;
	_chance_drop_arco = 25;
	_chance_drop_dano = 7;
	_chance_drop_fogo = 5;
	_chance_drop_gelo = 5;
	_chance_drop_veneno = 5;
	_chance_drop_escudo = 15;
	_chance_drop_vida = 5;
	_dano_espada = 4;
	_dano_arco = 5;
	
if (dir >= 90 && dir < 270) {
	sprite_index = spr_dfire3_morrendo_esquerda;
} else {
	sprite_index = spr_dfire3_morrendo_direita;
}
		
	if scr_fim_da_animacao(){
		//script_execute(scr_drops());
		scr_drop_arco();
		scr_drop_espada();
		scr_drop_dano();
		scr_drop_fogo();
		scr_drop_gelo();
		scr_drop_veneno();
		scr_drop_escudo();
		scr_drop_vida();
		instance_destroy(); 
		estado = scr_dfire3_movendo;
	}
}
