import 'motor.dart';

class Carro {
  String modelo;
  Motor motor;

  Carro(this.modelo, this.motor) {
    if (modelo.isEmpty) {
      print("Erro: O modelo do carro não pode ser vazio.");
    }
  }

  void exibirCarro() {
    print("Informações do Veículo:");
    print("Modelo: $modelo");
    motor.exibirMotor();
    print("-----------------------------\n");
  }
}