import 'ContaBancaria.dart';

class ContaCorrente extends ContaBancaria {
  ContaCorrente(String titular, double saldo) : super(titular, saldo) {
    taxaRendimento = 0.05;
  }
}