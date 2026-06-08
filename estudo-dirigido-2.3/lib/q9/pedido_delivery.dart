import 'pedido.dart';
import 'processavel.dart';

class PedidoDelivery extends Pedido implements Processavel {
  String enderecoEntrega;
  double taxaEntrega;

  PedidoDelivery(int codigo, double valorTotal, this.enderecoEntrega, this.taxaEntrega)
      : super(codigo, valorTotal);

  @override
  double valorFinal() {
    return valorTotal + taxaEntrega;
  }

  @override
  void exibirPedido() {
    print(toString());
  }

  @override
  String toString() {
    return 'Pedido Delivery | Código: $codigo | Valor total: R\$ ${valorTotal.toStringAsFixed(2)} | Endereço: $enderecoEntrega | Taxa de entrega: R\$ ${taxaEntrega.toStringAsFixed(2)} | Valor final: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}
