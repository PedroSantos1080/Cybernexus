if (global.pause){ 
	image_speed = 0;
	exit;
}else {
	image_speed = 1;
}

image_xscale = 0.3;
image_yscale = 0.3;

if scr_fim_da_animacao() && !surgimento{
	surgimento = true;

}

script_execute(estado);


if vida <= 0 {
	estado = scr_dfire1_morrendo;
}


