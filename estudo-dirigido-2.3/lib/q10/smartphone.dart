import 'dispositivo.dart';
import 'ligavel.dart';

class Smartphone extends Dispositivo implements Ligavel {
  String sistemaOperacional;

  Smartphone(String marca, String modelo, this.sistemaOperacional)
      : super(marca, modelo);

  @override
  void ligar() {
    print('$marca $modelo (Smartphone) está ligando... Sistema: $sistemaOperacional');
  }

  @override
  void desligar() {
    print('$marca $modelo (Smartphone) está desligando...');
  }

  @override
  String toString() {
    return 'Smartphone | Marca: $marca | Modelo: $modelo | Sistema: $sistemaOperacional';
  }
}
