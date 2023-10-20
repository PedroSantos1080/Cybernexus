/// @description Debugs
// Você pode escrever seu código neste editor
//draw_text(x,y, mask_index);
//draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
if (_congelando) {
	draw_sprite_ext(spr_gelo_equipado , 0, x, y - 160, 0.1, 0.1, 0 ,c_white, 1);
}

if (_tomando_dano){
	draw_sprite_ext(spr_pwup_veneno_equipado, 0, x, y - 200, 0.1, 0.1, 0 ,c_white, 1);
}


//draw_text(x,y - 20, vida_anterior);
//draw_text(x + 20,y, global.escudo_red);
//draw_text(x ,y, tomou_dano);
//draw_text(x + 20, y + 20, global.bluebateu);
//draw_text(x + 60,y + 60, global.veneno_blue);
//draw_text(x + 80 ,y + 80, tomou_dano);
//draw_text(x + 20, y + 20, alarm[4]);
//draw_text(x + 60,y + 60, global.pwup_gelo_pause_blue);
//draw_text(x + 80, y + 80, "Dano_espada: " + string(dano_espada));
//draw_text(x + 50,y, "Dano_espada_anterior: " + string( _dano_espada_anterior));
//draw_text(x + 80, y + 80, "Dano_arco: " + string(global.dano_arco_red));
//draw_text(x + 50,y, "Dano_arco_anterior: " + string(global.dano_arco_anterior_red));


//if (global.controle1 > 0) {
//	draw_text(x ,y, global.controle1);
//}



