import 'animal.dart';
import 'sonoro.dart';

class Cachorro extends Animal implements Sonoro {
  Cachorro(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome diz: Au au!');
  }

  @override
  String toString() {
    return 'Cachorro | Nome: $nome';
  }
}
