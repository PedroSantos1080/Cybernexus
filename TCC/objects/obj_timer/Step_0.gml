//Sistema do Boss
var boss_inst = instance_find(obj_boss, 0); //Procura a instância no obj_boss 

if (boss_inst != noone) { //Verifica se tem uma instância no obj_boss
	
	var vida_boss = boss_inst.vida; //Disponibiliza o acesso da variável 
	
	if !(vida_boss <= 0){ //Quando o boss morre, o cronômetro volta
		
			alarm[0] = 12; //Volta o cronômetro após a morte do Boss
			
		}
	}

//Sistema de Morte Súbita
if (Timer_Sec = 0 && Timer_Min = 0 && Timer_Mil = 0) {
	
	obj_cristal_red.vida  = 1;
	obj_cristal_blue.vida = 1;
	alarm[0] = 0; //Para o cronômetro

}

