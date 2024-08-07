// Configurações de fonte e alinhamento
draw_set_font(ft_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

// Verificar se o mouse está sobre o botão
if (is_mouse_over_button(mouse_x, mouse_y, center_x, center_y, button_width, button_height)) {
    draw_set_color(c_purple);
} else {
    draw_set_color(c_white);
}

// Desenhar o botão no centro da tela
draw_text(center_x, center_y, button_text);

// Resetar configurações de fonte
draw_set_font(-1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
