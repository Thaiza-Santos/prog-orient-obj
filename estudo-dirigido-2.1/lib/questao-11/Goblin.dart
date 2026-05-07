import 'Inimigo.dart';

class Goblin extends Inimigo {
  int _velocidade;

  Goblin(String nome, int vida, int nivel, int recompensa, this._velocidade)
      : super(nome, vida, nivel, recompensa);

  @override
  void exibirStatus() {
    super.exibirStatus();
    print("Velocidade: $_velocidade");
  }
}
