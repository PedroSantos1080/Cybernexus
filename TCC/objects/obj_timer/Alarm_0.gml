/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


Timer_Mil -= 1;

if (Timer_Mil = -1){ //Reduzindo os segundos
	Timer_Mil =  9;
	Timer_Sec -= 1; 
}
if (Timer_Sec = -1){ //Reduzindo os minutos
	Timer_Sec =  59;
	Timer_Min -= 1; 
}

//Enquanto o cronômetro não for 1min o timer funciona sem parar
if !(Timer_Sec = 0 && Timer_Min = 1 && Timer_Mil = 0){ 
	alarm[0] = 6;
}

//Pausa o jogo
if (alarm[0] = 0) {
	instance_create_layer(992, 416,  "Mobs", obj_kommapunt); //Spawna o Boss
	instance_destroy(obj_paimobs);
}

//Volta o cronômetro após a morte do Boss
if alarm[0] = 12 {
	
	if !(Timer_Sec = 0 && Timer_Min = 0 && Timer_Mil = 0){ 
		alarm[0] = 6;
	}else {
	}
	
}	
