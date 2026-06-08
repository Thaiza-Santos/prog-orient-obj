import 'Smartphone.dart';

void main() {
  var celular = Smartphone("Samsung", "S23", "Android");
  print("Marca: ${celular.marca}");
  print("Modelo: ${celular.modelo}");

  celular.sistemaOperacional = "Android 14";
  celular.ligar();
}
