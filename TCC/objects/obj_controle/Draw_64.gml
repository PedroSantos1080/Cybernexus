if (room == rm_vitoria_red) {
	alarm[0] = 0;
	alarm[1] = 0;
	alarm[3] = 0;
	alarm[2] = 0;
}


if (room == rm_vitoria_blue) {
	alarm[0] = 0;
	alarm[1] = 0;
	alarm[3] = 0;
	alarm[2] = 0;	
}


if (global.pause) {
	depth = 0;
	if (keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(global.controle1, gp_face1)) {
		game_restart();
		audio_pause_sound(snd_batalha);
		global.pause = false;
	}
	draw_set_alpha(0.6);
	draw_set_color(c_black);
	draw_rectangle(0,0, _largura, _altura, false);
	draw_set_alpha(1);
	draw_set_color(-1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(f_dano);
	draw_text_ext_color(_largura/2, _altura/2, "JOGO PAUSADO", 80, 900, _c, _c, _c, _c, 1);
	draw_text_ext_color(_largura/2, _altura/2 + 40, "APERTE 'X ou ESPAÇO' PARA REINICIAR O GAME", 80, 900, _c, _c, _c, _c, 1);
	//instance_create_layer(_largura/2, _altura/2 + 120, "Instances", obj_exit);
}