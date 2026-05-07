import 'Personagem.dart';
import 'Combatente.dart';

class Guerreiro extends Combatente {
  int _armadura;

  Guerreiro(String nome, int vida, int nivel, int forca, this._armadura)
      : super(nome, vida, nivel, forca);

  @override
  void exibirStatus() {
    super.exibirStatus();
    print("Armadura: $_armadura");
  }

  void ataquePesado(Personagem alvo) {
    int dano = forca * 2;
    print("$nome usou ataque pesado!");
    alvo.receberDano(dano);
  }
}
