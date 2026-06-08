import 'personagem.dart';
import 'atacavel.dart';

abstract class Combatente extends Personagem implements Atacavel {
  Combatente(String nome, int vida, int nivel) : super(nome, vida, nivel);
}
