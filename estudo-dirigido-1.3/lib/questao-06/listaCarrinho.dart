import '../questao-05/itemCarrinho.dart';

class ListaCarrinho {
  final List<ItemCarrinho> _itens = [];
 
  void inserir(ItemCarrinho item) {
    _itens.add(item);
  }
 
  void remover(int i) {
    if (i >= 0 && i < _itens.length) {
      _itens.removeAt(i);
    } else {
      print('Índice inválido.');
    }
  }
 
  int tamanho() => _itens.length;
 
  ItemCarrinho? get(int i) {
    if (i >= 0 && i < _itens.length) return _itens[i];
    print('Índice inválido.');
    return null;
  }
 
  void exibirLista() {
    print('--- Itens do Carrinho (${tamanho()}) ---');
    for (var item in _itens) {
      item.exibirItem();
    }
  }
}