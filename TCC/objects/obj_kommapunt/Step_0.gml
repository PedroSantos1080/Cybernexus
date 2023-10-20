/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (global.pause){ 
	image_speed = 0;
	exit;
}else {
	image_speed = 1;
}

if scr_fim_da_animacao() && !surgimento{
	surgimento = true;
}

script_execute(estado);



if (vida <= 0) {
	estado = scr_boss_morrendo;
}




//if (sprite_index == spr_boss_surgindo) {
//	if (scr_fim_da_animacao()) {
//		sprite_index = spr_boss_parado;
//	}
//}



//if (alarm[0] == 0) {
//	sprite_index = spr_boss_atack;
//	alarm[0] = 150;
//}

//if (sprite_index == spr_boss_atack) {
//	if (scr_fim_da_animacao()) {sprite_index = spr_boss_parado;}
//}

//if (vida <= 0) {
//	sprite_index = spr_boss_morrendo;
//	if (scr_fim_da_animacao()) {
//		instance_destroy();
//	}
//}

//if (vida < vida_anterior && !tomou_dano) {
//	sprite_index = spr_boss_dano;
	
//	if (scr_fim_da_animacao()) {
//		sprite_index = spr_boss_parado;
//	}
	
//	vida_anterior = vida;
//	tomou_dano = true;
//}


////if (sprite_index == spr_boss_atack) {
////	if (scr_fim_da_animacao()) {
////		sprite_index = spr_boss_parado;
////	}
////}


















