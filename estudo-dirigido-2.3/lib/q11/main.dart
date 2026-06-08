import 'atacavel.dart';
import 'magico.dart';
import 'flamejante.dart';
import 'personagem.dart';
import 'guerreiro.dart';
import 'arqueiro.dart';
import 'mago.dart';
import 'goblin.dart';
import 'dragao.dart';
import 'lista_generica.dart';

void main() {
  // Criando os personagens
  Guerreiro thoran = Guerreiro('Thoran', 120, 5, 20, 15);
  Arqueiro lia = Arqueiro('Lia', 80, 4, 15, 10);
  Mago merlin = Mago('Merlin', 70, 6, 10, 50);
  Goblin gob = Goblin('Gob', 40, 2, 100, 25);
  Dragao ignis = Dragao('Ignis', 200, 10, 1000, 35);

  // ListaGenerica<Atacavel> — combatentes
  ListaGenerica<Atacavel> combatentes = ListaGenerica<Atacavel>();
  combatentes.adicionar(thoran);
  combatentes.adicionar(lia);
  combatentes.adicionar(merlin);

  // ListaGenerica<Magico> — mágicos
  ListaGenerica<Magico> magicos = ListaGenerica<Magico>();
  magicos.adicionar(merlin);

  // ListaGenerica<Flamejante> — flamejantes
  ListaGenerica<Flamejante> flamejantes = ListaGenerica<Flamejante>();
  flamejantes.adicionar(ignis);

  // ListaGenerica<Personagem> — todos
  ListaGenerica<Personagem> personagens = ListaGenerica<Personagem>();
  personagens.adicionar(thoran);
  personagens.adicionar(lia);
  personagens.adicionar(merlin);
  personagens.adicionar(gob);
  personagens.adicionar(ignis);

  print('--- Impressão de todos os personagens ---');
  personagens.imprimirItens();

  print('\n--- Combatentes atacando ---');
  for (var combatente in combatentes.obterItens()) {
    combatente.atacar();
  }

  print('\n--- Mágicos lançando magia ---');
  for (var magico in magicos.obterItens()) {
    magico.lancarMagia();
  }

  print('\n--- Flamejantes soltando fogo ---');
  for (var flamejante in flamejantes.obterItens()) {
    flamejante.soltarFogo();
  }

  print('\n--- Estado atualizado dos personagens ---');
  personagens.imprimirItens();
}
