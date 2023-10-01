/// @description PwUp Veneno
// Você pode escrever seu código neste editor
if (alarm[9] = 0) && !(danovenenototal == 1) {
	
	vida -= danoveneno;
	danovenenototal += 0.2;
	estado = scr_blue_dano;
	
	
	alarm[9] = 60;

}else{
	alarm[9] = 90000;
}

