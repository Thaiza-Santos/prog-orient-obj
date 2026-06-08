abstract class Pedido {
  int codigo;
  double valorTotal;

  Pedido(this.codigo, this.valorTotal);

  @override
  String toString() {
    return 'Pedido: $codigo | Valor total: R\$ ${valorTotal.toStringAsFixed(2)}';
  }
}
