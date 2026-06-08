import 'pedido.dart';
import 'processavel.dart';

class PedidoRetirada extends Pedido implements Processavel {
  String nomeCliente;

  PedidoRetirada(int codigo, double valorTotal, this.nomeCliente)
      : super(codigo, valorTotal);

  @override
  double valorFinal() {
    return valorTotal;
  }

  @override
  void exibirPedido() {
    print(toString());
  }

  @override
  String toString() {
    return 'Pedido Retirada | Código: $codigo | Valor total: R\$ ${valorTotal.toStringAsFixed(2)} | Cliente: $nomeCliente | Valor final: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}
