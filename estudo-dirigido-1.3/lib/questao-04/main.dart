import '../questao-03/produto.dart';
import 'listaProduto.dart';

void main() {
  var lista = ListaProduto();
 
  lista.inserir(Produto('Notebook', 3500.0, 10, true));
  lista.inserir(Produto('Mouse', 120.0, 50, true));
  lista.inserir(Produto('Teclado', 200.0, 30, true));
 
  print('Tamanho: ${lista.tamanho()}');
 
  print('\nProduto no índice 1:');
  lista.get(1)?.exibirProduto();
 
  lista.remover(0);
  print('\nApós remover índice 0:');
  lista.exibirLista();
}