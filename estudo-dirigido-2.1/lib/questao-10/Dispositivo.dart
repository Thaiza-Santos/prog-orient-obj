class Dispositivo {
  String _marca;
  String _modelo;

  Dispositivo(this._marca, this._modelo);

  String get marca => _marca;
  String get modelo => _modelo;

  set marca(String novaMarca) {
    _marca = novaMarca;
  }

  set modelo(String novoModelo) {
    _modelo = novoModelo;
  }

  void ligar() {
    print("Dispositivo ligado");
  }
}
