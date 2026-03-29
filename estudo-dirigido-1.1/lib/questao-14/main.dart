import 'carro.dart';
import 'motor.dart';

void main() {
  Motor motorv8 = Motor(450, "V8 Turbo");
  Carro carro1 = Carro("Mustang GT", motorv8);

  Motor eletrico = Motor(283, "Elétrico");
  Carro carro2 = Carro("Tesla Model 3", eletrico);

  carro1.exibirCarro();
  carro2.exibirCarro();
}