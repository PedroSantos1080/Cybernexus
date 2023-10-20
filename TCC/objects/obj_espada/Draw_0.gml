/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_self();
draw_set_color(c_white);
draw_set_font(f_dano);
//draw_text(x, y - 40, "DMG: " + string(global._dano_espada));
draw_text_transformed(x, y -40,  "DMG: " + string(global._dano_espada), 0.6, 0.6, 1);

if (place_meeting(x, y, obj_red)) {
    //draw_text(x, y, "Aperte 'E' para equipar");
	draw_text_transformed(x - 80, y - 80, "Equipar", 0.6, 0.6, 1);
}

if (place_meeting(x, y, obj_blue)) {
    //draw_text(x, y, "Aperte 'E' para equipar");
	draw_text_transformed(x - 80, y - 80, "Equipar", 0.6, 0.6, 1);
}

if (global.red_espada_cybernetica){
	draw_text_transformed(x - 80, y - 80, "Espada Cybernetica", 0.6, 0.6, 1);
	
}else if (global.blue_espada_cybernetica) {

}