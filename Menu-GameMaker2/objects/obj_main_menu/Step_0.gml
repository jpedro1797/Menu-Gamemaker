// Função para verificar se uma tecla ou botão do mouse foi pressionado
function is_action_pressed() {
    return keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left);
}

// Função para mudar a sala com base no índice selecionado
function change_room_based_on_index(index) {
    switch(index) {
        case 0:
            room_goto(rm_gameplay);
            break;
        case 1:
            room_goto(rm_settings);
            break;
        case 2:
            room_goto(rm_exit);
            break;
        default:
            // Caso para índices inválidos (se necessário)
            break;
    }
}

// Verificar se uma ação de navegação foi acionada
if (is_action_pressed()) {
    change_room_based_on_index(index);
}
