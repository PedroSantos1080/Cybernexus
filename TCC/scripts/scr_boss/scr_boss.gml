// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

//The Walkers Nível 1


function scr_boss_parado(){
	sprite_index = spr_boss_parado;
	
	if (vida < vida_anterior && !tomou_dano) {
		estado = scr_boss_dano;
		vida_anterior = vida;
		tomou_dano = true;
	}

	if (alarm[0] <= 0 && estado == scr_boss_parado) {
		estado = scr_boss_atacando;

	}

}

function scr_boss_dano(){
	sprite_index = spr_boss_dano;
	
	tomou_dano = false;
	

	if scr_fim_da_animacao(){
		estado = scr_boss_parado;
	}
}

function scr_boss_atacando() {
	
	//    _obj = [obj_red, obj_blue];
    //var nearestPlayer = _obj[0];
    //var nearestDistance = point_distance(x, y, nearestPlayer.x, nearestPlayer.y);

    //// Percorre a lista de jogadores para encontrar o mais próximo
    //for (var i = 1; i < array_length_1d(_obj); ++i) {
    //    var player = _obj[i];
    //    var distance = point_distance(x, y, player.x, player.y);
        
    //    if (distance < nearestDistance) {
    //        nearestPlayer = player;
    //        nearestDistance = distance;
    //    }
    //}

    //if (instance_exists(nearestPlayer)) {
    //    dir = point_direction(x, y, nearestPlayer.x, nearestPlayer.y);
    //}
	
	scr_perseguir();

    //hspd = lengthdir_x(spd, dir);
    //vspd = lengthdir_y(spd, dir);
	
	if (dir >= 90 && dir < 270) {
		image_xscale = 1;
	}else {
		image_xscale = -1;
	}
	
	
	
	alarm[0] = 250;
	sprite_index = spr_boss_atack;
	
	if (scr_fim_da_animacao()) {
		estado = scr_boss_parado;
	}
}

function scr_boss_morrendo(){
	sprite_index = spr_boss_morrendo;
	
	if (scr_fim_da_animacao()) {
		scr_drop_espada_poder_cybernetico()
		instance_destroy(); 
	}
		
}

