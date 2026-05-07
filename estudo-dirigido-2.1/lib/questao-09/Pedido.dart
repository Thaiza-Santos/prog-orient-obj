class Pedido {
  int _codigo;
  double _valorTotal;

  Pedido(this._codigo, this._valorTotal);

  int get codigo => _codigo;
  double get valorTotal => _valorTotal;

  set codigo(int novoCodigo) {
    _codigo = novoCodigo;
  }

  set valorTotal(double novoValor) {
    if (novoValor >= 0) {
      _valorTotal = novoValor;
    }
  }

  void exibirPedido() {
    print("Código: $_codigo");
    print("Valor: R\$ $_valorTotal");
  }
}
