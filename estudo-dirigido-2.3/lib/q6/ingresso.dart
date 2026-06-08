class Ingresso {
  String evento;
  double valor;

  Ingresso(this.evento, this.valor);

  @override
  String toString() {
    return 'Evento: $evento | Valor: R\$ ${valor.toStringAsFixed(2)}';
  }
}
