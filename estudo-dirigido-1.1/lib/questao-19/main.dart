import 'comodo.dart';
import 'casa.dart';

void main() {
  Comodo comodo1 = Comodo("Sala", 25.5);
  Comodo comodo2 = Comodo("Quarto", 12.0);
  Comodo comodo3 = Comodo("Cozinha", 15.8);

  Casa casa = Casa("Fulano", comodo1, comodo2, comodo3);

  casa.exibirCasa();
}