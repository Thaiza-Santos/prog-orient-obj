import '../questao-01/cliente.dart';
import '../questao-05/itemCarrinho.dart';
import '../questao-06/listaCarrinho.dart';

class Carrinho {
  Cliente _cliente;
  ListaCarrinho _itens;
  bool _aberto;

  Carrinho(this._cliente, this._itens, this._aberto);

  Cliente get cliente => _cliente;
  ListaCarrinho get itens => _itens;
  bool get aberto => _aberto;

  set cliente(Cliente valor) => _cliente = valor;
  set aberto(bool valor) => _aberto = valor;

  void adicionarItem(ItemCarrinho item) {
    if (_aberto) {
      _itens.inserir(item);
    } else {
      print('Carrinho fechado. Não é possível adicionar itens.');
    }
  }

  void removerItem(int i) {
    if (_aberto) {
      _itens.remover(i);
    } else {
      print('Carrinho fechado.');
    }
  }

  double calcularTotal() {
    double total = 0;
    for (int i = 0; i < _itens.tamanho(); i++) {
      total += _itens.get(i)!.calcularSubtotal();
    }
    return total;
  }

  void exibirCarrinho() {
    print('=== Carrinho ===');
    _cliente.exibirCliente();
    print('Status: ${_aberto ? "Aberto" : "Fechado"}');
    print('Itens:');
    for (int i = 0; i < _itens.tamanho(); i++) {
      _itens.get(i)!.exibirItem();
    }
    print('Total: R\$ ${calcularTotal().toStringAsFixed(2)}');
  }
}
