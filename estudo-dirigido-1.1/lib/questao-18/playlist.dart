import 'musica.dart';

class Playlist {
  String nome;
  Musica musica1;
  Musica musica2;
  Musica musica3;

  Playlist(this.nome, this.musica1, this.musica2, this.musica3) {
    if (nome.isEmpty) {
      print("Erro: O nome da playlist não pode ser vazio.");
    }
  }

  int calcularDuracaoTotal() {
    return musica1.duracaoSegundos + musica2.duracaoSegundos + musica3.duracaoSegundos;
  }

  void exibirPlaylist() {
    print("Playlist: $nome");
    print("Música 1: ${musica1.formatarDados()}");
    print("Música 2: ${musica2.formatarDados()}");
    print("Música 3: ${musica3.formatarDados()}");
    print("Duração total: ${calcularDuracaoTotal()} segundos");
    print("------------------------------");
  }

  void tocarPlaylist() {
    print("Tocando playlist: $nome");
    print("Tocando: ${musica1.titulo}");
    print("Tocando: ${musica2.titulo}");
    print("Tocando: ${musica3.titulo}");
    print("Fim da playlist.\n");
  }
}