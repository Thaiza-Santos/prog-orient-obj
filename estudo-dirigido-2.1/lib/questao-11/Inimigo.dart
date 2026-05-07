import 'Personagem.dart';

class Inimigo extends Personagem {
  int _recompensa;

  Inimigo(String nome, int vida, int nivel, this._recompensa)
      : super(nome, vida, nivel);

  int get recompensa => _recompensa;

  void mostrarRecompensa() {
    print("Recompensa: $_recompensa");
  }
}
