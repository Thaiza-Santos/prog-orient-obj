import 'Dispositivo.dart';

class Smartphone extends Dispositivo {
  String _sistemaOperacional;

  Smartphone(String marca, String modelo, this._sistemaOperacional)
      : super(marca, modelo);

  String get sistemaOperacional => _sistemaOperacional;

  set sistemaOperacional(String novoSO) {
    _sistemaOperacional = novoSO;
  }

  @override
  void ligar() {
    print("Smartphone ligado com $_sistemaOperacional");
  }
}
