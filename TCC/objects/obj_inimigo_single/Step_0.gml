if (global.pause){ 
	exit;
}else {
	image_speed = 1;
}

 
if (instance_exists(obj_cristal_single)) {
	dir = point_direction(x, y, (obj_cristal_single).x, (obj_cristal_single).y);
}


hspd = lengthdir_x(spd, dir);
vspd = lengthdir_y(spd, dir);

x += hspd;
y += vspd;


if vida <= 0 {
	instance_destroy();
	dropa_loot();
}


