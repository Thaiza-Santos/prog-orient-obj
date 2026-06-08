import 'sonoro.dart';
import 'cachorro.dart';
import 'gato.dart';
import 'passaro.dart';
import 'vaca.dart';
import 'ovelha.dart';
import 'lista_generica.dart';

void main() {
  ListaGenerica<Sonoro> animais = ListaGenerica<Sonoro>();

  Sonoro animal1 = Cachorro('Rex');
  Sonoro animal2 = Gato('Mimi');
  Sonoro animal3 = Passaro('Piu');
  Sonoro animal4 = Vaca('Mimosa');
  Sonoro animal5 = Ovelha('Dolly');

  animais.adicionar(animal1);
  animais.adicionar(animal2);
  animais.adicionar(animal3);
  animais.adicionar(animal4);
  animais.adicionar(animal5);

  print('--- Impressão dos animais ---');
  animais.imprimirItens();

  print('\n--- Sons via interface ---');
  for (var animal in animais.obterItens()) {
    animal.emitirSom();
  }
}
