import '../questao-01/cliente.dart';
import '../questao-02/listaCliente.dart';
import '../questao-03/produto.dart';
import '../questao-04/listaProduto.dart';
import '../questao-09/pedido.dart';
 
class Loja {
  String _nome;
  ListaCliente _clientes;
  ListaProduto _produtos;
  final List<Pedido> _pedidos = [];
 
  Loja(this._nome, this._clientes, this._produtos);
 
  String get nome => _nome;
  ListaCliente get clientes => _clientes;
  ListaProduto get produtos => _produtos;
  List<Pedido> get pedidos => _pedidos;
 
  set nome(String valor) {
    if (valor.isNotEmpty) _nome = valor;
  }
 
  set clientes(ListaCliente valor) => _clientes = valor;
  set produtos(ListaProduto valor) => _produtos = valor;
 
  void cadastrarCliente(Cliente cliente) => _clientes.inserir(cliente);
  void cadastrarProduto(Produto produto) => _produtos.inserir(produto);
  void registrarPedido(Pedido pedido) => _pedidos.add(pedido);
 
  void exibirResumoLoja() {
    print('========================================');
    print('Loja: $_nome');
    print('========================================');
    print('\n--- Clientes (${_clientes.tamanho()}) ---');
    _clientes.exibirLista();
    print('\n--- Produtos (${_produtos.tamanho()}) ---');
    _produtos.exibirLista();
    print('\n--- Pedidos (${_pedidos.length}) ---');
    for (var pedido in _pedidos) {
      pedido.exibirResumoPedido();
      print('');
    }
    print('========================================');
  }
}
 