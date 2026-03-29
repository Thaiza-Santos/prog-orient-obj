import 'pedido.dart';
import 'produto.dart';

void main() {
  Produto p1 = Produto(101, "Notebook", 2500.00);
  Produto p2 = Produto(102, "Smartphone", 1500.00);

  Pedido pedido1 = Pedido(1, p1, 2);
  Pedido pedido2 = Pedido(2, p2, 3);

  pedido1.Exibirpedido();
  pedido2.Exibirpedido();
}