import 'Combatente.dart';
import 'Personagem.dart';

class Guerreiro extends Combatente {
  String armadura;

  Guerreiro(
    String nome,
    double vida,
    int nivel,
    double forca,
    this.armadura,
  ) : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    alvo.receberDano(forca);
    print('$nome atacou ${alvo.nome} e causou $forca de dano.');
  }

  void ataquePesado(Personagem alvo) {
    double dano = forca * 2;
    alvo.receberDano(dano);
    print('$nome usou ataque pesado em ${alvo.nome} e causou $dano de dano.');
  }

  @override
  void exibirStatus() {
    print('Guerreiro');
    print('Nome: $nome');
    print('Vida: ${vida.toStringAsFixed(0)}');
    print('Nível: $nivel');
    print('Armadura: $armadura');
  }
}
