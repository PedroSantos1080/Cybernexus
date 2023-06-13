/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var Obj, Velocidade ;

Obj := [obj_personagem1, obj_personagem2];

Velocidade := 4 ; //Velocidade com que vai seguir.


move_towards_point(Obj[0].x, Obj[0].y, min(Velocidade, point_distance(x, y, Obj[0].x, Obj[0].y))) ;


if vida <= 0 {
	instance_destroy();
}