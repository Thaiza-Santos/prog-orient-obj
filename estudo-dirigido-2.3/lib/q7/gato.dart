import 'animal.dart';
import 'sonoro.dart';

class Gato extends Animal implements Sonoro {
  Gato(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome diz: Miau!');
  }

  @override
  String toString() {
    return 'Gato | Nome: $nome';
  }
}
