import 'combatente.dart';

class Arqueiro extends Combatente {
  int forca;
  int flechas;

  Arqueiro(String nome, int vida, int nivel, this.forca, this.flechas)
      : super(nome, vida, nivel);

  @override
  void atacar() {
    print('$nome (Arqueiro) atira uma flecha com força $forca! Flechas restantes: ${flechas - 1}');
  }

  @override
  String toString() {
    return 'Arqueiro | Nome: $nome | Vida: $vida | Nível: $nivel | Força: $forca | Flechas: $flechas';
  }
}
