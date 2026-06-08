import 'animal.dart';
import 'sonoro.dart';

class Passaro extends Animal implements Sonoro {
  Passaro(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome diz: Piu piu!');
  }

  @override
  String toString() {
    return 'Pássaro | Nome: $nome';
  }
}
