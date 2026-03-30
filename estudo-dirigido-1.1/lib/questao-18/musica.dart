class Musica {
  String titulo;
  String artista;
  int duracaoSegundos; // duração em segundos

  Musica(this.titulo, this.artista, this.duracaoSegundos){
    if (duracaoSegundos < 0) {
      print("Erro: A duração da música não pode ser negativa.");
    }
  }

  String formatarDados() {
    return "Título: $titulo - $artista - ${duracaoSegundos}s";
  }
}