/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (room == rm_singleplayer && _personagem == "red" && !_personagem_criado) {
    _personagem_criado = true; // Variável de controle para indicar que o personagem já foi criado
    instance_create_layer(971.7, 950, "Personagem_red", obj_red_single);
	instance_create_layer(971.7, 1024, "Cristal_red", obj_cristal_single);
}

if (room == rm_singleplayer && _personagem == "blue" && !_personagem_criado) {
    _personagem_criado = true; // Variável de controle para indicar que o personagem já foi criado
    instance_create_layer(971.7, 950, "Personagem_blue", obj_blue_single);
	instance_create_layer(971.7, 1024, "Cristal_blue", obj_cristal_single);
}





