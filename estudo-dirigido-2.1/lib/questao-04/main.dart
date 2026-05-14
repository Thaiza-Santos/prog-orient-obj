import 'ContaPoupanca.dart';
import 'ContaCorrente.dart';

void main() {
  print('--- Teste Conta Poupança ---');
  var poupanca = ContaPoupanca('Braz', 1000.0);
  poupanca.exibirSaldo();
  poupanca.aplicarRendimento();
  poupanca.exibirSaldo();

  print('\n--- Teste Conta Corrente ---');
  var corrente = ContaCorrente('Junior', 1000.0);
  corrente.exibirSaldo();
  corrente.aplicarRendimento();
  corrente.exibirSaldo();
}