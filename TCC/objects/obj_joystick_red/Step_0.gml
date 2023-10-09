/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Evento de Etapa
if (mouse_x > x - sprite_width/2 && mouse_x < x + sprite_width/2 && mouse_y > y - sprite_height/2 && mouse_y < y + sprite_height/2) {
    if (mouse_check_button_pressed(mb_left)) {
        active = true;
    }
} else if (mouse_check_button_pressed(mb_left)) {
    active = false;
}

if (active) {
    // Adicione aqui o código para aceitar a entrada do teclado
		if (keyboard_check(vk_anykey) and string_length(text) < 20) {
		text = text + string(keyboard_string);
		keyboard_string = "";
	}

	if (keyboard_check(vk_backspace) and !keyboard_check_pressed(vk_backspace) and delete_timer = 2) {
		text = string_delete(text, string_length(text), 1);
		delete_timer = 0;
		keyboard_string = "";
	}

	if (keyboard_check_pressed(vk_backspace)) {
		text = string_delete(text, string_length(text), 1);
		keyboard_string = "";
		delete_timer = -4;
	}

	if (delete_timer != 2) {
		delete_timer ++;
	}


	if (keyboard_check_pressed(vk_enter)) {
		global.controle1 = text;
	}
}



