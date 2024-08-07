// Função para verificar se uma tecla ou botão do mouse foi pressionado
function is_action_pressed() {
    return keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left);
}

// Função para executar a ação do menu com base no índice selecionado
function execute_menu_action(index) {
    switch(index) {
        case 0:
            // Aqui irá sair do jogo
            game_end();
            break;
        case 1:
            // Aqui volta para o menu principal
            room_goto(rm_main_menu);
            break;
        default:
            // Caso padrão para índices inválidos (se necessário)
            break;
    }
}

// Verificar se uma ação de navegação foi acionada
if (is_action_pressed()) {
    execute_menu_action(index);
}
