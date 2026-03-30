class Cofrinho {
  double saldo;
  int quantidadeDepositos;

  Cofrinho(this.saldo) : quantidadeDepositos = 0 {
    if (saldo < 0) {
      print("Erro: O saldo inicial não pode ser negativo.");
      saldo = 0;
      }
  }

  void depositar(double valor) {
    if (valor > 0) {
      saldo += valor;
      quantidadeDepositos++;
      print("Depósito de R\$ ${valor.toStringAsFixed(2)} realizado com sucesso.");
    } else {
      print("Erro: O valor do depósito deve ser positivo.");
    }
  }

  void quebrar() {
    print("Quebrando o cofrinho...");
    print("Saldo total disponível: R\$ ${saldo.toStringAsFixed(2)}");
    print("Quantidade de depósitos realizados: $quantidadeDepositos");

    saldo = 0;
    quantidadeDepositos = 0;
    print("O cofrinho foi quebrado e o saldo foi zerado.");
  }

  void exibirSaldo() {
    print("Saldo atual do cofrinho: R\$ ${saldo.toStringAsFixed(2)}");
  }
}