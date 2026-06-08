import 'combatente.dart';

class Guerreiro extends Combatente {
  int forca;
  int armadura;

  Guerreiro(String nome, int vida, int nivel, this.forca, this.armadura)
      : super(nome, vida, nivel);

  @override
  void atacar() {
    print('$nome (Guerreiro) ataca com força $forca!');
  }

  @override
  String toString() {
    return 'Guerreiro | Nome: $nome | Vida: $vida | Nível: $nivel | Força: $forca | Armadura: $armadura';
  }
}
