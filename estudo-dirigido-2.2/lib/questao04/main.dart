import 'ContaPoupanca.dart';
import 'ContaCorrente.dart';

void main() {
  ContaPoupanca poupanca = ContaPoupanca('Ana', 0);
  ContaCorrente corrente = ContaCorrente('Carlos', 0);

  poupanca.depositar(1000);
  poupanca.aplicarRendimento();

  corrente.depositar(1000);
  corrente.aplicarRendimento();

  print('Conta poupança');
  poupanca.exibirSaldo();

  print('');

  print('Conta corrente');
  corrente.exibirSaldo();
}
