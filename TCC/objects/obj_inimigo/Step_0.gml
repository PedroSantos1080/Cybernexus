if (global.pause){ 
	exit;
}else {
	image_speed = 1;
}

 
if (instance_exists(_obj[sorteio])) {
	dir = point_direction(x, y, (_obj[sorteio]).x, (_obj[sorteio]).y);
}


hspd = lengthdir_x(spd, dir);
vspd = lengthdir_y(spd, dir);

x += hspd;
y += vspd;


if vida <= 0 {
	instance_destroy();
}


