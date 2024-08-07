// Verificar se o mouse está sobre o botão e se o botão foi clicado
if (mouse_check_button_pressed(mb_left) && is_mouse_over_button(mouse_x, mouse_y, center_x, center_y, button_width, button_height)) {
    room_goto(rm_main_menu);
}

// Função para verificar se o mouse está sobre o botão
function is_mouse_over_button(mouse_x, mouse_y, button_x, button_y, button_width, button_height) {
    return point_in_rectangle(
        mouse_x,
        mouse_y,
        button_x - button_width / 2,
        button_y - button_height / 2,
        button_x + button_width / 2,
        button_y + button_height / 2
    );
}
