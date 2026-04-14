import 'produto.dart';

void main() {
  var p1 = Produto('Notebook', 3500.0, 10, true);
  var p2 = Produto('Mouse', 120.0, 50, true);
 
  p1.nome = 'Notebook Gamer';
  p2.preco = 99.90;
 
  p1.reporEstoque(5);
  p2.retirarEstoque(20);
 
  p1.exibirProduto();
  p2.exibirProduto();
}