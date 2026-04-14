import '../questao-01/cliente.dart';
import '../questao-03/produto.dart';
import '../questao-05/itemCarrinho.dart';
import '../questao-06/listaCarrinho.dart';
import 'carrinho.dart';

void main() {
  var cliente = Cliente('Ana Silva', 'ana@email.com', 1000.0, true);
 
  var p1 = Produto('Notebook', 3500.0, 10, true);
  var p2 = Produto('Mouse', 120.0, 50, true);
  var p3 = Produto('Teclado', 200.0, 30, true);
 
  var carrinho = Carrinho(cliente, ListaCarrinho(), true);
  carrinho.adicionarItem(ItemCarrinho(p1, 1));
  carrinho.adicionarItem(ItemCarrinho(p2, 2));
  carrinho.adicionarItem(ItemCarrinho(p3, 1));
 
  carrinho.exibirCarrinho();
}