/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


var _largura = display_get_gui_width();
var _altura = display_get_gui_height();
draw_set_font(f_dano);
draw_set_color(c_black);
draw_set_halign(fa_top);
draw_set_valign(fa_top);

//Imprimindo cronometro na tela 
var Cronometro = ""
Cronometro += string(Timer_Min);
Cronometro += ":";

if (Timer_Sec > 9) {
	Cronometro += "" + string(Timer_Sec);
}
if (Timer_Sec < 10) {
	Cronometro += "0" + string(Timer_Sec);
}




if (room == rm_gameplay) {
	draw_text(930 , 0, Cronometro);
}