// Variáveis para centralizar na tela e obter posição do mouse
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();
var center_x = gui_width / 2;
var center_y = gui_height / 2;
var margin = 45;

// Função para verificar se o mouse está sobre a opção
function is_mouse_over_option(mouse_x, mouse_y, option_x, option_y, option_width, option_height) {
    return point_in_rectangle(
        mouse_x,
        mouse_y,
        option_x - option_width / 2,
        option_y - option_height / 2,
        option_x + option_width / 2,
        option_y + option_height / 2
    );
}

// Configurações de fonte e alinhamento
draw_set_font(ft_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

// Desenhar cada opção de configuração
for (var i = 0; i < op_maxConfig; i++) {
    var option_y = center_y + (margin * i);
    var option_text = opcoesConfig[i];
    var option_width = string_width(option_text);
    var option_height = string_height(option_text);

    // Verificar se o mouse está sobre a opção ou se a opção está selecionada
    if (is_mouse_over_option(mouse_x, mouse_y, center_x, option_y, option_width, option_height) || indexConfig == i) {
        indexConfig = i;
        draw_set_color(c_purple);
    } else {
        draw_set_color(c_white);
    }

    // Desenhar a opção no centro da tela
    draw_text(center_x, option_y, option_text);
}

// Resetar configurações de fonte
draw_set_font(-1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
