import 'Personagem.dart';
import 'Combatente.dart';

class Mago extends Combatente {
  int _mana;

  Mago(String nome, int vida, int nivel, int forca, this._mana)
      : super(nome, vida, nivel, forca);

  void lancarMagia(Personagem alvo) {
    if (_mana >= 10) {
      int dano = forca + 15;
      print("$nome lançou magia em ${alvo.nome}");
      alvo.receberDano(dano);
      _mana -= 10;
    } else {
      print("$nome sem mana!");
    }
  }
}
