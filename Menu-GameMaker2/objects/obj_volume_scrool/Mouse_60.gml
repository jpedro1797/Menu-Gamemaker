// Verificar se o índice de volume pode ser incrementado
if (indexVolume < vl_max - 1) {
    indexVolume++;
}

// Atualizar o volume com base no índice
volume = volumeVisual[indexVolume];
volumeAtual = volume;