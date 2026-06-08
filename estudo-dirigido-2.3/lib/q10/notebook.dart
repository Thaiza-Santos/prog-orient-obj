import 'dispositivo.dart';
import 'ligavel.dart';

class Notebook extends Dispositivo implements Ligavel {
  int memoriaRam;

  Notebook(String marca, String modelo, this.memoriaRam)
      : super(marca, modelo);

  @override
  void ligar() {
    print('$marca $modelo (Notebook) está ligando... RAM: ${memoriaRam}GB');
  }

  @override
  void desligar() {
    print('$marca $modelo (Notebook) está desligando...');
  }

  @override
  String toString() {
    return 'Notebook | Marca: $marca | Modelo: $modelo | RAM: ${memoriaRam}GB';
  }
}
