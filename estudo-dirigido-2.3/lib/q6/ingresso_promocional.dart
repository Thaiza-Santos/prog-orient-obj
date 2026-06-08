import 'ingresso.dart';
import 'calculavel.dart';

class IngressoPromocional extends Ingresso implements Calculavel {
  double desconto;

  IngressoPromocional(String evento, double valor, this.desconto)
      : super(evento, valor);

  @override
  double valorFinal() {
    return valor - desconto;
  }

  @override
  String toString() {
    return 'Ingresso Promocional | Evento: $evento | Valor original: R\$ ${valor.toStringAsFixed(2)} | Desconto: R\$ ${desconto.toStringAsFixed(2)} | Valor final: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}
