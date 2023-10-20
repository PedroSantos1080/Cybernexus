/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_self();
draw_set_color(c_white);
draw_set_font(f_dano);





if (place_meeting(x, y, obj_red)) {
    //draw_text(x, y, "Aperte 'E' para equipar");
	draw_text_transformed(x - 100, y - 80, "Equipar", 0.6, 0.6, 1);
}

if (place_meeting(x, y, obj_blue)) {
    //draw_text(x, y, "Aperte 'E' para equipar");
	draw_text_transformed(x - 100, y - 80, "Equipar", 0.6, 0.6, 1);
}







