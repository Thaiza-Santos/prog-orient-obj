import 'Personagem.dart';
import 'Combatente.dart';

class Arqueiro extends Combatente {
  int _flechas;

  Arqueiro(String nome, int vida, int nivel, int forca, this._flechas)
      : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    if (_flechas > 0) {
      print("$nome atirou no ${alvo.nome}");
      alvo.receberDano(forca);
      _flechas--;
    } else {
      print("$nome não tem flechas!");
    }
  }
}
