import '../questao-01/cliente.dart';

class ListaCliente {
  final List<Cliente> _clientes = [];
 
  void inserir(Cliente cliente) {
    _clientes.add(cliente);
  }
 
  void remover(int i) {
    if (i >= 0 && i < _clientes.length) {
      _clientes.removeAt(i);
    } else {
      print('Índice inválido.');
    }
  }
 
  int tamanho() => _clientes.length;
 
  Cliente? get(int i) {
    if (i >= 0 && i < _clientes.length) return _clientes[i];
    print('Índice inválido.');
    return null;
  }
 
  void exibirLista() {
    print('--- Lista de Clientes (${tamanho()}) ---');
    for (var c in _clientes) {
      c.exibirCliente();
    }
  }
}