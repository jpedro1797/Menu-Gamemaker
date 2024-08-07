// Desenho da % do volume

// Configurações de fonte e alinhamento
draw_set_font(ft_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

// Verificar se indexVolume está dentro do intervalo válido
if (indexVolume >= 0 && indexVolume < array_length_1d(volumeVisual)) {
    // Desenho da % do volume
    draw_set_color(c_white);
    draw_text(800, 380, string(volumeVisual[indexVolume]));
} else {
    // Caso o índice esteja fora do intervalo
    draw_set_color(c_red);
    draw_text(800, 380, "Erro: Índice de volume inválido");
}

// Resetar configurações de fonte
draw_set_font(-1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);