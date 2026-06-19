import 'Pedido.dart';

class PedidoDelivery extends Pedido {
  String enderecoEntrega;
  double taxaEntrega;

  PedidoDelivery(
    int codigo,
    double valorTotal,
    this.enderecoEntrega,
    this.taxaEntrega,
  ) : super(codigo, valorTotal);

  @override
  void exibirPedido() {
    double valorFinal = valorTotal + taxaEntrega;

    print('Pedido delivery');
    print('Código: $codigo');
    print('Valor do pedido: R\$ ${valorTotal.toStringAsFixed(2)}');
    print('Endereço: $enderecoEntrega');
    print('Taxa de entrega: R\$ ${taxaEntrega.toStringAsFixed(2)}');
    print('Valor final: R\$ ${valorFinal.toStringAsFixed(2)}');
  }
}
