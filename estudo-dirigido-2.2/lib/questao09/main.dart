import 'PedidoDelivery.dart';
import 'PedidoRetirada.dart';

void main() {
  PedidoDelivery delivery =
      PedidoDelivery(1, 80.00, 'Rua das Flores, 100', 10.00);
  PedidoRetirada retirada = PedidoRetirada(2, 45.00, 'Fernanda');

  delivery.exibirPedido();
  print('');
  retirada.exibirPedido();
}
