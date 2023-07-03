if (global.pause){ 
	exit;
}else {
	image_speed = 1;
}


if (instance_exists(Obj)) {
	dir = point_direction(x, y, Obj.x, Obj.y);
}else if (instance_exists(Obj)){
	Obj := obj_personagem2;
	dir = point_direction(x, y, Obj.x, Obj.y);
}

hspd = lengthdir_x(spd, dir);
vspd = lengthdir_y(spd, dir);

x += hspd;
y += vspd;


if vida <= 0 {
	instance_destroy();
}


