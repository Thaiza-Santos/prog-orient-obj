import 'Personagem.dart';
import 'Atacavel.dart';

abstract class Combatente extends Personagem implements Atacavel {
  double forca;

  Combatente(
    String nome,
    double vida,
    int nivel,
    this.forca,
  ) : super(nome, vida, nivel);

  @override
  void atacar(Personagem alvo);
}
