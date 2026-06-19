import 'Cachorro.dart';
import 'Gato.dart';
import 'Passaro.dart';
import 'Vaca.dart';

void main() {
  Cachorro cachorro = Cachorro('Rex');
  Gato gato = Gato('Mimi');
  Passaro passaro = Passaro('Piu');
  Vaca vaca = Vaca('Mimosa');

  cachorro.emitirSom();
  gato.emitirSom();
  passaro.emitirSom();
  vaca.emitirSom();
}
