import 'produto.dart';

class Pedido {
  int numero;
  Produto produto;
  int quantidade;

  Pedido(this.numero, this.produto, this.quantidade) {
    if (numero <= 0)
      print("Erro: O número do pedido deve ser maior que zero.");
    if (quantidade <= 0)
      print("Erro: A quantidade deve ser maior que zero.");
  }

  double calcularTotal() {
    return produto.precoUnitario * quantidade;
  }

  void Exibirpedido() {
    print("Pedido Número $numero");
    produto.exibirDados();
    print("Quantidade: $quantidade");
    print("Total do Pedido: R\$ ${calcularTotal().toStringAsFixed(2)}");
    print("-----------------------------\n");
  }
}