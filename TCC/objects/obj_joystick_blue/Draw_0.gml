/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_self();
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, text);
draw_set_font(f_dano)

var _num = 0;
for (var i = 0; i < 12; i++) {
    var xx = 50;
    var yy = 32 + (160 * _num);
    if gamepad_is_connected(i) {
        _num++;
        draw_text(xx, yy, "Gamepad Slot - " + string(i));
    }
}

	




