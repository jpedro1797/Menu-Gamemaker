// Ajustar o volume do som
// Verificar se o volume atual mudou
if (volumeAtual != volume) {
    volumeAtual = volume;
    var num = audio_get_listener_count(); // Obter o número de ouvintes de áudio
    for (var i = 0; i < num; i++) {
        var info = audio_get_listener_info(i); // Obter informações do ouvinte
        var ind = info[? "index"];
        audio_set_master_gain(ind, volumeAtual / 10); // Ajustar o ganho do áudio
        ds_map_destroy(info); // Destruir o mapa de informações do ouvinte
    }
}