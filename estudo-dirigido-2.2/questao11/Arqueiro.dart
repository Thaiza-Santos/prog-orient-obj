import 'Combatente.dart';
import 'Personagem.dart';

class Arqueiro extends Combatente {
  int flechas;

  Arqueiro(
    String nome,
    double vida,
    int nivel,
    double forca,
    this.flechas,
  ) : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    if (flechas > 0) {
      alvo.receberDano(forca);
      flechas--;
      print('$nome atacou ${alvo.nome} e causou $forca de dano.');
    } else {
      print('$nome não pode atacar porque está sem flechas.');
    }
  }

  @override
  void exibirStatus() {
    print('Arqueiro');
    print('Nome: $nome');
    print('Vida: ${vida.toStringAsFixed(0)}');
    print('Nível: $nivel');
    print('Flechas: $flechas');
  }
}
