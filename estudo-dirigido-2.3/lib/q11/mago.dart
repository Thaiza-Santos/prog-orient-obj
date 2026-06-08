import 'combatente.dart';
import 'magico.dart';

class Mago extends Combatente implements Magico {
  int forca;
  int mana;

  Mago(String nome, int vida, int nivel, this.forca, this.mana)
      : super(nome, vida, nivel);

  @override
  void atacar() {
    print('$nome (Mago) ataca com força $forca!');
  }

  @override
  void lancarMagia() {
    print('$nome (Mago) lança uma magia poderosa! Mana utilizado: 10 | Mana restante: ${mana - 10}');
  }

  @override
  String toString() {
    return 'Mago | Nome: $nome | Vida: $vida | Nível: $nivel | Força: $forca | Mana: $mana';
  }
}
