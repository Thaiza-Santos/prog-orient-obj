class ContaBancaria {
  String titular;
  double saldo;
  double taxaRendimento = 0.0;

  ContaBancaria(this.titular, this.saldo);

  void depositar(double valor) {
    if (valor > 0) {
      saldo += valor;
      print('Depósito de R\$${valor.toStringAsFixed(2)} realizado.');
    }
  }

  void sacar(double valor) {
    if (valor > 0 && valor <= saldo) {
      saldo -= valor;
      print('Saque de R\$${valor.toStringAsFixed(2)} realizado.');
    } else {
      print('Saldo insuficiente para o saque.');
    }
  }

  void exibirSaldo() {
    print('Titular: $titular | Saldo Atual: R\$${saldo.toStringAsFixed(2)}');
  }

  void aplicarRendimento() {
    double rendimento = saldo * taxaRendimento;
    saldo += rendimento;
    print('Rendimento de ${(taxaRendimento * 100).toInt()}% aplicado.');
  }
}