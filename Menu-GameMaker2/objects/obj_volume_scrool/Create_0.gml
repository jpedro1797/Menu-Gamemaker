// Variáveis para centralizar na tela e obter posição do mouse
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();
var center_x = gui_width / 2;
var center_y = gui_height / 2;
var margin = 45;

// Variáveis de volume
volumeAtual = 0.5; // Valor inicial para volume, ajuste conforme necessário
volume = 0.5; // Valor inicial para volume, ajuste conforme necessário

// Variáveis de configuração de volume
indexVolume = 0; // Valor inicial para índice do volume
volumeVisual = [0, 20, 40, 60, 80, 100]; // Exemplo de valores visuais de volume
vl_max = array_length_1d(volumeVisual); // Número máximo de índices para o volume

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