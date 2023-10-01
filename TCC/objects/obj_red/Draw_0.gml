/// @description PwUp Escudo
// Você pode escrever seu código neste editor

draw_self();

if global.escudo_red == true{
	draw_sprite(spr_pwup_escudo, 0, x, y);
}else {
	draw_sprite(spr_sem_escudo, 0, x, y);
}