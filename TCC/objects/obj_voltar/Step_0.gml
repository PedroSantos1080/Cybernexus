/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (keyboard_check_pressed(vk_backspace) or gamepad_button_check_pressed(global.controle1, gp_face2)) {
	if (room == rm_selecao_tempo || room == rm_selecao_personagem || room == rm_creditos) {
		room_goto(rm_menu_modo);
	}
}







