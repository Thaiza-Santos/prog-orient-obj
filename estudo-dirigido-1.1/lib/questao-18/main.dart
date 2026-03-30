import 'musica.dart';
import 'playlist.dart';

void main() {
  Musica m1 = Musica("Closure", "ZeRO", 326);
  Musica m2 = Musica("No Tiengo Dinero", "Klaf", 159);
  Musica m3 = Musica("A Banda Mais Bonita da Cidade", "A Banda Mais Bonita da Cidade", 226);  

  Playlist playlist = Playlist("Indie Brasileiro", m1, m2, m3);

  playlist.exibirPlaylist();
  playlist.tocarPlaylist();
}