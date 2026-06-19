import 'Inimigo.dart';

class Goblin extends Inimigo {
  double velocidade;

  Goblin(
    String nome,
    double vida,
    int nivel,
    double recompensa,
    this.velocidade,
  ) : super(nome, vida, nivel, recompensa);

  @override
  void exibirStatus() {
    print('Goblin');
    print('Nome: $nome');
    print('Vida: ${vida.toStringAsFixed(0)}');
    print('Nível: $nivel');
    print('Velocidade: $velocidade');
  }

  @override
  void exibirRecompensa() {
    print('Recompensa por derrotar $nome: $recompensa moedas.');
  }
}
