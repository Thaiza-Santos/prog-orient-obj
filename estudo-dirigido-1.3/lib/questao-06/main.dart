import '../questao-03/produto.dart';
import '../questao-05/itemCarrinho.dart';
import 'listaCarrinho.dart';

void main() {
  var p1 = Produto('Notebook', 3500.0, 10, true);
  var p2 = Produto('Mouse', 120.0, 50, true);
  var p3 = Produto('Teclado', 200.0, 30, true);
 
  var lista = ListaCarrinho();
  lista.inserir(ItemCarrinho(p1, 1));
  lista.inserir(ItemCarrinho(p2, 2));
  lista.inserir(ItemCarrinho(p3, 3));
 
  print('Tamanho: ${lista.tamanho()}');
 
  print('\nItem no índice 1:');
  lista.get(1)?.exibirItem();
 
  lista.remover(0);
  print('\nApós remover índice 0:');
  lista.exibirLista();
}