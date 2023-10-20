// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

function scr_cyberdark_movendo(){
	
	scr_perseguir();

    hspd = lengthdir_x(spd, dir);
    vspd = lengthdir_y(spd, dir);

    x += hspd;
    y += vspd;

if (dir >= 90 && dir < 270) {
	sprite_index = spr_cyberdark_esquerda;
} else {
	sprite_index = spr_cyberdark_direita;
}

if (vida < vida_anterior && !tomou_dano) {
	estado = scr_cyberdark_dano;
	vida_anterior = vida;
	tomou_dano = true;
}

}
	

	
function scr_cyberdark_dano(){
	tomou_dano = false;
	
if (dir >= 90 && dir < 270) {
	sprite_index = spr_cyberdark_tomoudano_esq;
} else {
	sprite_index = spr_cyberdark_tomoudano_dir;
}

	if scr_fim_da_animacao(){
		estado = scr_cyberdark_movendo;
	}
}

function scr_cyberdark_atacando() {
	
	if (dir >= 90 && dir < 270) {
		sprite_index = spr_cyberdark_atacando_esquerda;
	} else {
		sprite_index = spr_cyberdark_atacando_direita;
	}

	if (scr_fim_da_animacao()) {
		estado = scr_cyberdark_movendo;
	}
}

function scr_cyberdark_morrendo(){
	_chance_drop_espada = 25;
	_chance_drop_arco = 25;
	_chance_drop_dano = 12;
	_chance_drop_fogo = 12;
	_chance_drop_gelo = 12;
	_chance_drop_veneno = 12;
	_chance_drop_escudo = 20;
	_chance_drop_vida = 8;
	_dano_espada = 10;
	_dano_arco = 11;
if (dir >= 90 && dir < 270) {
	sprite_index = spr_cyberdark_morrendo_esquerda;
} else {
	sprite_index = spr_cyberdark_morrendo_direita;
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
		instance_destroy(); 
	}
}