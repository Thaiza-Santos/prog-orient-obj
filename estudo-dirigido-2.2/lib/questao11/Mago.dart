import 'Combatente.dart';
import 'Magico.dart';
import 'Personagem.dart';

class Mago extends Combatente implements Magico {
  double mana;

  Mago(
    String nome,
    double vida,
    int nivel,
    double forca,
    this.mana,
  ) : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    alvo.receberDano(forca);
    print('$nome atacou ${alvo.nome} e causou $forca de dano.');
  }

  @override
  void lancarMagia(Personagem alvo) {
    if (mana >= 10) {
      double dano = forca + 15;
      alvo.receberDano(dano);
      mana -= 10;
      print('$nome lançou magia em ${alvo.nome} e causou $dano de dano.');
    } else {
      print('$nome não pode lançar magia porque não possui mana suficiente.');
    }
  }

  @override
  void exibirStatus() {
    print('Mago');
    print('Nome: $nome');
    print('Vida: ${vida.toStringAsFixed(0)}');
    print('Nível: $nivel');
    print('Mana: ${mana.toStringAsFixed(0)}');
  }
}
