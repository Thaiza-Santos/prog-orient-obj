import 'pedido.dart';
import 'processavel.dart';

class PedidoExpress extends Pedido implements Processavel {
  double taxaUrgencia;

  PedidoExpress(int codigo, double valorTotal, this.taxaUrgencia)
      : super(codigo, valorTotal);

  @override
  double valorFinal() {
    return valorTotal + taxaUrgencia;
  }

  @override
  void exibirPedido() {
    print(toString());
  }

  @override
  String toString() {
    return 'Pedido Express | Código: $codigo | Valor total: R\$ ${valorTotal.toStringAsFixed(2)} | Taxa de urgência: R\$ ${taxaUrgencia.toStringAsFixed(2)} | Valor final: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}
