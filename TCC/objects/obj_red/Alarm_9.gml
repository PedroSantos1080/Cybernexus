/// @description PwUp Veneno
// Você pode escrever seu código neste editor
if (alarm[9] = 0) && !(danovenenototal == 5) {
	vida -= danoveneno;
	danovenenototal += 1;
	estado = scr_red_dano;
	alarm[9] = 60;
	
}else{
	_tomando_dano = false;
	alarm[9] = 90000;
}