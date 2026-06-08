import 'processavel.dart';
import 'pedido_delivery.dart';
import 'pedido_retirada.dart';
import 'pedido_express.dart';
import 'lista_generica.dart';

void main() {
  ListaGenerica<Processavel> pedidos = ListaGenerica<Processavel>();

  Processavel pedido1 = PedidoDelivery(1001, 120.00, 'Rua A, 100', 15.00);
  Processavel pedido2 = PedidoRetirada(1002, 80.00, 'Ana');
  Processavel pedido3 = PedidoExpress(1003, 200.00, 40.00);
  Processavel pedido4 = PedidoDelivery(1004, 150.00, 'Rua B, 250', 20.00);
  Processavel pedido5 = PedidoRetirada(1005, 60.00, 'Bruno');

  pedidos.adicionar(pedido1);
  pedidos.adicionar(pedido2);
  pedidos.adicionar(pedido3);
  pedidos.adicionar(pedido4);
  pedidos.adicionar(pedido5);

  print('--- Impressão dos pedidos ---');
  pedidos.imprimirItens();

  print('\n--- Valores finais e exibição via interface ---');
  for (var pedido in pedidos.obterItens()) {
    print('Valor final: R\$ ${pedido.valorFinal().toStringAsFixed(2)}');
    pedido.exibirPedido();
    print('');
  }
}
