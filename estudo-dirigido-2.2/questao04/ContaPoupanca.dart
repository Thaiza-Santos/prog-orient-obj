import 'ContaBancaria.dart';
import 'Rentavel.dart';

class ContaPoupanca extends ContaBancaria implements Rentavel {
  ContaPoupanca(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * 0.01;
  }
}
