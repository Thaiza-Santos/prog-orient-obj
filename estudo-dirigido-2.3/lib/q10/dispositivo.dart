class Dispositivo {
  String marca;
  String modelo;

  Dispositivo(this.marca, this.modelo);

  @override
  String toString() {
    return 'Marca: $marca | Modelo: $modelo';
  }
}
