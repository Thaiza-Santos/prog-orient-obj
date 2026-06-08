import 'animal.dart';
import 'sonoro.dart';

class Ovelha extends Animal implements Sonoro {
  Ovelha(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome diz: Béé!');
  }

  @override
  String toString() {
    return 'Ovelha | Nome: $nome';
  }
}
