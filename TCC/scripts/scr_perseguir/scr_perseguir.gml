// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_perseguir(){
		_obj = [obj_red, obj_blue];
		var nearestPlayer = noone;  // Inicializa nearestPlayer como 'noone'
		var nearestDistance = -1;  // Inicializa nearestDistance como -1

		// Verifica se cada objeto existe antes de atribuí-lo a nearestPlayer
		for (var i = 0; i < array_length_1d(_obj); ++i) {
		    if (instance_exists(_obj[i])) {
		        var player = _obj[i];
		        var distance = point_distance(x, y, player.x, player.y);
        
		        if (nearestPlayer == noone || distance < nearestDistance) {
		            nearestPlayer = player;
		            nearestDistance = distance;
		        }
		    }
		}

		// Agora, só calcula a direção se nearestPlayer não for 'noone'
		if (nearestPlayer != noone) {
		    dir = point_direction(x, y, nearestPlayer.x, nearestPlayer.y);
		}
}