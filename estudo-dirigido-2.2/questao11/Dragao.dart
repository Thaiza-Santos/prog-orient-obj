import 'Inimigo.dart';
import 'Flamejante.dart';
import 'Personagem.dart';

class Dragao extends Inimigo implements Flamejante {
  double poderFogo;

  Dragao(
    String nome,
    double vida,
    int nivel,
    double recompensa,
    this.poderFogo,
  ) : super(nome, vida, nivel, recompensa);

  @override
  void soltarFogo(Personagem alvo) {
    alvo.receberDano(poderFogo);
    print('$nome soltou fogo em ${alvo.nome} e causou $poderFogo de dano.');
  }

  @override
  void exibirStatus() {
    print('Dragão');
    print('Nome: $nome');
    print('Vida: ${vida.toStringAsFixed(0)}');
    print('Nível: $nivel');
    print('Poder de fogo: $poderFogo');
  }

  @override
  void exibirRecompensa() {
    print('Recompensa por derrotar $nome: $recompensa moedas.');
  }
}
