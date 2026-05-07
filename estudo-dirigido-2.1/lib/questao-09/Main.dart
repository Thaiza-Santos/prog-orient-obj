import 'Pedido.dart';
import 'PedidoDelivery.dart';

void main() {
  var pedido = PedidoDelivery(1, 100.0, "Rua A", 15.0);
  print("Código: ${pedido.codigo}");

  pedido.valorTotal = 120.0;
  print("Valor atualizado: ${pedido.valorTotal}");
  print("Endereço: ${pedido.enderecoEntrega}");
  print("Valor final: R\$ ${pedido.calcularValorFinal()}");
}
