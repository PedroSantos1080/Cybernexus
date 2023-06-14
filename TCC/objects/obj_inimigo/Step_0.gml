var Obj, Velocidade ;
Obj := obj_personagem1;
Velocidade := 4 ; 


move_towards_point(Obj.x, Obj.y, min(Velocidade, point_distance(x, y, Obj.x, Obj.y)));


if vida <= 0 {
	instance_destroy();
}
