import 'Guerreiro.dart';
import 'Arqueiro.dart';
import 'Mago.dart';
import 'Goblin.dart';
import 'Dragao.dart';

void main() {
  Guerreiro thoran = Guerreiro(
    'Thoran',
    100,
    5,
    20,
    'Armadura de aço',
  );

  Arqueiro lia = Arqueiro(
    'Lia',
    80,
    4,
    15,
    5,
  );

  Mago merlin = Mago(
    'Merlin',
    70,
    6,
    20,
    30,
  );

  Goblin gob = Goblin(
    'Gob',
    30,
    2,
    50,
    12,
  );

  Dragao ignis = Dragao(
    'Ignis',
    120,
    10,
    500,
    25,
  );

  thoran.atacar(gob);
  lia.atacar(gob);
  merlin.lancarMagia(ignis);
  ignis.soltarFogo(thoran);

  print('\nSTATUS DOS PERSONAGENS\n');

  thoran.exibirStatus();
  print('');

  lia.exibirStatus();
  print('');

  merlin.exibirStatus();
  print('');

  gob.exibirStatus();
  if (!gob.estaVivo()) {
    gob.exibirRecompensa();
  }

  print('');

  ignis.exibirStatus();
  if (!ignis.estaVivo()) {
    ignis.exibirRecompensa();
  }
}
