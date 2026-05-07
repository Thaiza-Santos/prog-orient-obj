import 'Pedido.dart';

class PedidoDelivery extends Pedido {
  String _enderecoEntrega;
  double _taxaEntrega;

  PedidoDelivery(int codigo, double valorTotal, this._enderecoEntrega, this._taxaEntrega)
      : super(codigo, valorTotal);

  String get enderecoEntrega => _enderecoEntrega;
  double get taxaEntrega => _taxaEntrega;

  double calcularValorFinal() {
    return valorTotal + _taxaEntrega;
  }
}
