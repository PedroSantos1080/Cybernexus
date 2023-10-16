// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
	_chance_drop_espada = 0;
	_chance_drop_arco = 0;
	_chance_drop_dano = 0;
	_chance_drop_fogo = 0;
	_chance_drop_gelo = 0;
	_chance_drop_veneno = 0;
	_chance_drop_escudo = 0;
	_chance_drop_vida = 0;
	_dano_espada = 0;
	_dano_arco = 0;


function scr_drop_espada() {
	var _valor = 1;
		
	
	
	_valor = random(100);


	if (_chance_drop_espada >= _valor){
		instance_create_layer(x, y, "Instances", obj_espada);
		obj_red.dano_espada = _dano_espada;
		obj_blue.dano_espada = _dano_espada;
		
	}
}

function scr_drop_arco() {
	var _valor = 1;
		

	
	_valor = random(100);

	if (_chance_drop_arco >= _valor){
		instance_create_layer(x, y, "Instances", obj_arco);
		global.dano_arco_red = _dano_arco;
		global.dano_arco_blue = _dano_arco;
	}
}

function scr_drop_escudo() {
	var _valor = 1;
		

	
	_valor = random(100);

	if (_chance_drop_escudo >= _valor){
		instance_create_layer(x, y, "Instances", obj_pwup_escudo);
	}
}
	
function scr_drop_gelo() {
	var _valor = 1;
		

	
	_valor = random(100);

	if (_chance_drop_gelo >= _valor){
		instance_create_layer(x, y, "Instances", obj_gelo_pegar);
	}
}	
	
function scr_drop_fogo() {
	var _valor = 1;
		

	
	_valor = random(100);

	if (_chance_drop_fogo >= _valor){
		instance_create_layer(x, y, "Instances", obj_fogo_pegar);
	}
}	
	
function scr_drop_veneno() {
	var _valor = 1;
		

	
	_valor = random(100);

	if (_chance_drop_veneno >= _valor){
		instance_create_layer(x, y, "Instances", obj_pwup_veneno);
	}
}	
	
function scr_drop_dano() {
	var _valor = 1;
		

	
	_valor = random(100);

	if (_chance_drop_dano >= _valor){
		instance_create_layer(x, y, "Instances", obj_melhoria_dano);
	}
}	
	
function scr_drop_vida() {
	var _valor = 1;
		

	
	_valor = random(100);

	if (_chance_drop_vida >= _valor){
		instance_create_layer(x, y, "Instances", obj_vida);
	}
}	

