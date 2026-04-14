import '../questao-01/cliente.dart';
import '../questao-02/listaCliente.dart';
import '../questao-03/produto.dart';
import '../questao-04/listaProduto.dart';
import '../questao-05/itemCarrinho.dart';
import '../questao-06/listaCarrinho.dart';
import '../questao-07/carrinho.dart';
import '../questao-08/cupom.dart';
import '../questao-09/pedido.dart';
import 'loja.dart';
 
void main() {
  var loja = Loja('TechShop', ListaCliente(), ListaProduto());
 
  var c1 = Cliente('Ana Silva', 'ana@email.com', 5000.0, true);
  var c2 = Cliente('Bruno Costa', 'bruno@email.com', 3000.0, true);
  loja.cadastrarCliente(c1);
  loja.cadastrarCliente(c2);
 
  var p1 = Produto('Notebook', 3500.0, 10, true);
  var p2 = Produto('Mouse', 120.0, 50, true);
  var p3 = Produto('Teclado', 200.0, 30, true);
  loja.cadastrarProduto(p1);
  loja.cadastrarProduto(p2);
  loja.cadastrarProduto(p3);

  var carrinho1 = Carrinho(c1, ListaCarrinho(), true);
  carrinho1.adicionarItem(ItemCarrinho(p1, 1));
  carrinho1.adicionarItem(ItemCarrinho(p2, 2));
 
  var cupom = CupomDesconto('TECH10', 10.0, true);
  var pedido1 = Pedido('PED-001', carrinho1, cupom: cupom);
  pedido1.fecharPedido();
  loja.registrarPedido(pedido1);

  var carrinho2 = Carrinho(c2, ListaCarrinho(), true);
  carrinho2.adicionarItem(ItemCarrinho(p3, 2));
 
  var pedido2 = Pedido('PED-002', carrinho2);
  pedido2.fecharPedido();
  loja.registrarPedido(pedido2);

  loja.exibirResumoLoja();
}