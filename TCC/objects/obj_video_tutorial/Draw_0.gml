/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var results = video_draw();

if (results[0] == 0) {
    draw_surface(results[1], 0, 0);
}

if (video_get_status() == video_status_playing) {
    draw_text(32, 640, "Video status: playing");
    if (keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(global.controle1, gp_face1)) {
        video_pause();
    } else if (keyboard_check_pressed(vk_backspace) or gamepad_button_check_pressed(global.controle1, gp_face2)) {
		//audio_play_sound(snd_menu, 1 , true);
		video_close();
		room_goto(rm_menu_modo);
}
} else if (video_get_status() == video_status_paused) {
    draw_text(32, 640, "Video status: paused");
    if (keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(global.controle1, gp_face1)) {
        video_resume();
    } else if (keyboard_check_pressed(vk_backspace) or gamepad_button_check_pressed(global.controle1, gp_face2)) {
		//audio_play_sound(snd_menu, 1 , true);
		video_close();
		room_goto(rm_menu_modo);
}
}

if (video_get_format() == video_format_rgba) {
    draw_text(32, 672, "Video color format: RGBA");
} else if (video_get_format() == video_format_yuv) {
    draw_text(32, 672, "Video color format: YUV");
}

draw_text(32, 704, "Video position: " + string(floor(video_get_position() / 1000)) + "/" + string(floor(video_get_duration() / 1000)));







