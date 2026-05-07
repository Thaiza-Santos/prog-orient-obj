import 'Personagem.dart';

class Combatente extends Personagem {
  int _forca;

  Combatente(String nome, int vida, int nivel, this._forca)
      : super(nome, vida, nivel);

  int get forca => _forca;

  void atacar(Personagem alvo) {
    print("$nome atacou ${alvo.nome}");
    alvo.receberDano(_forca);
  }
}
