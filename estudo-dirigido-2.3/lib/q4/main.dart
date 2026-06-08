import 'rentavel.dart';
import 'conta_poupanca.dart';
import 'conta_corrente.dart';
import 'conta_investimento.dart';
import 'lista_generica.dart';

void main() {
  ListaGenerica<Rentavel> contas = ListaGenerica<Rentavel>();

  Rentavel conta1 = ContaPoupanca('Ana', 1000.00);
  Rentavel conta2 = ContaCorrente('Bruno', 1500.00);
  Rentavel conta3 = ContaInvestimento('Carla', 5000.00);
  Rentavel conta4 = ContaPoupanca('Diego', 2500.00);
  Rentavel conta5 = ContaCorrente('Elisa', 800.00);

  contas.adicionar(conta1);
  contas.adicionar(conta2);
  contas.adicionar(conta3);
  contas.adicionar(conta4);
  contas.adicionar(conta5);

  print('--- Saldos antes do rendimento ---');
  contas.imprimirItens();

  print('\n--- Aplicando rendimentos ---');
  for (var conta in contas.obterItens()) {
    conta.aplicarRendimento();
  }

  print('\n--- Saldos após o rendimento ---');
  contas.imprimirItens();
}
