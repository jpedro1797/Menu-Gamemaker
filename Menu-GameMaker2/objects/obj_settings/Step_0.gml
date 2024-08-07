// Função para verificar se uma tecla ou botão do mouse foi pressionado
function is_action_pressed() {
    return keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left);
}

// Função para executar a ação com base no índice selecionado
function execute_menu_action(indexConfig) {
    switch(indexConfig) {
        case 0:
            // Aqui habilita o som
            global.somOn = false;
            break;
        case 1:
            // Aqui o sistema de tela cheia
            t_cheia = !t_cheia;
            window_set_fullscreen(t_cheia);
            break;
        case 2:
            // Volta para o menu principal
            room_goto(rm_main_menu);
            break;
        default:
            // Caso para índices inválidos (se necessário)
            break;
    }
}

// Verificar se uma ação de navegação foi acionada
if (is_action_pressed()) {
    execute_menu_action(indexConfig);
}
