import 'Guerreiro.dart';
import 'Arqueiro.dart';
import 'Mago.dart';
import 'Goblin.dart';
import 'Dragao.dart';

void main() {
  var guerreiro = Guerreiro("Thoran", 100, 1, 20, 10);
  var arqueiro = Arqueiro("Lia", 80, 1, 15, 2);
  var mago = Mago("Merlin", 70, 1, 10, 20);
  var goblin = Goblin("Gob", 60, 1, 50, 30);
  var dragao = Dragao("Ignis", 150, 1, 200, 25);

  print("---- AÇÕES ----");
  guerreiro.atacar(goblin);
  arqueiro.atacar(goblin);
  mago.lancarMagia(dragao);
  dragao.soltarFogo(guerreiro);

  print("\n---- STATUS FINAL ----");
  guerreiro.exibirStatus();
  print("------");
  arqueiro.exibirStatus();
  print("------");
  mago.exibirStatus();
  print("------");
  goblin.exibirStatus();
  print("------");
  dragao.exibirStatus();
}
