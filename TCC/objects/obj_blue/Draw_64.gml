/// @description Debugs
if (_congelando) {
	draw_sprite_ext(spr_gelo_equipado, 0, x, y - 160, 0.1, 0.1, 0 ,c_white, 1);
}

if (_tomando_dano) {
	draw_sprite_ext(spr_pwup_veneno_equipado, 0, x, y - 200, 0.1, 0.1, 0 ,c_white, 1);
}
// Você pode escrever seu código neste editor
//draw_text(x ,y, tomou_dano);
//draw_text(x + 20, y + 20, global.redbateu);
//draw_text(x + 60,y + 60, global.pwup_gelo_pause_red);
//draw_text(x + 80,y + 80, vida);


//if (global.controle2 > 0) {
//	draw_text(x ,y, global.controle2);
//}

//draw_text(x + 80, y + 80, "Dano_arco: " + string(global.dano_arco_blue));
//draw_text(x + 50,y, "Dano_arco_anterior: " + string(global.dano_arco_anterior_blue));