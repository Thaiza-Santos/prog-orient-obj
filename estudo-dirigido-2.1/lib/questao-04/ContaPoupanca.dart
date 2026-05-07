import 'ContaBancaria.dart';

class ContaPoupanca extends ContaBancaria {
  ContaPoupanca(String titular, double saldo) : super(titular, saldo) {
    taxaRendimento = 0.01;
  }
}