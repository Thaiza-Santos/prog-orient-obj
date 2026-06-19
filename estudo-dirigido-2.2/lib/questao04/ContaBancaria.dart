class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  void depositar(double valor) {
    if (valor > 0) {
      saldo += valor;
    }
  }

  void sacar(double valor) {
    if (valor > 0 && valor <= saldo) {
      saldo -= valor;
    } else {
      print('Saque não realizado.');
    }
  }

  void exibirSaldo() {
    print('Titular: $titular');
    print('Saldo: R\$ ${saldo.toStringAsFixed(2)}');
  }
}
