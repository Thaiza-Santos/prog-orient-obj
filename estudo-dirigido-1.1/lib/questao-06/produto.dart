class Produto {
  int codigo;
  String nome;
  double precoUnitario;
  int quantidade;

  Produto(this.codigo, this.nome, this.precoUnitario, this.quantidade) {
    if (precoUnitario < 0) {
      throw ArgumentError('Preço unitário deve ser positivo.');
    }
    if (quantidade < 0) {
      throw ArgumentError('Quantidade deve ser positiva.');
    }
  }

  double calcularDesconto() {
    double subtotal = precoUnitario * quantidade;

    if (quantidade >= 4){
      return 0.0; //  sem desconto
    } else if (quantidade >=5 && quantidade <= 9) {
      return subtotal * 0.05; // 5% de desconto
    } else if (quantidade >= 10 && quantidade <= 19){
      return subtotal * 0.10; // 10% de desconto
    } else {
      return subtotal * 0.15; // 20 unidades ou mais, 15% de desconto
    }
  }

  double calcularTotal() {
    double subtotal = precoUnitario * quantidade;
    return subtotal - calcularDesconto();
  }

  void exibirResumo() {
    print("Resumo da Comp :");
    print('Código: $codigo');
    print('Nome: $nome');
    print('Preço Unitário: R\$ ${precoUnitario.toStringAsFixed(2)}');
    print('Quantidade: $quantidade');
    print('Desconto: R\$ ${calcularDesconto().toStringAsFixed(2)}');
    print('Total a Pagar: R\$ ${calcularTotal().toStringAsFixed(2)}');
    print("-----------------------------");
  }}