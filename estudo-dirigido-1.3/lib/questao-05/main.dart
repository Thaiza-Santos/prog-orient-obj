import '../questao-03/produto.dart';
import 'itemCarrinho.dart';

void main() {
  var p1 = Produto('Notebook', 3500.0, 10, true);
  var p2 = Produto('Mouse', 120.0, 50, true);
 
  var item1 = ItemCarrinho(p1, 1);
  var item2 = ItemCarrinho(p2, 3);
 
  item2.quantidade = 5;
 
  item1.exibirItem();
  item2.exibirItem();
}