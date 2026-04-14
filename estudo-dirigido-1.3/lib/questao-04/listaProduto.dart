import '../questao-03/produto.dart';

class ListaProduto {
  final List<Produto> _produtos = [];
 
  void inserir(Produto produto) {
    _produtos.add(produto);
  }
 
  void remover(int i) {
    if (i >= 0 && i < _produtos.length) {
      _produtos.removeAt(i);
    } else {
      print('Índice inválido.');
    }
  }
 
  int tamanho() => _produtos.length;
 
  Produto? get(int i) {
    if (i >= 0 && i < _produtos.length) return _produtos[i];
    print('Índice inválido.');
    return null;
  }
 
  void exibirLista() {
    print('--- Lista de Produtos (${tamanho()}) ---');
    for (var p in _produtos) {
      p.exibirProduto();
    }
  }
}