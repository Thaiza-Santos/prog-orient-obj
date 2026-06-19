import 'Carro.dart';
import 'Moto.dart';

void main() {
  Carro carro = Carro('Volkswagen', 'Gol', 2015, 4);
  Moto moto = Moto('Honda', 'CG 160', 2024, 160);

  carro.exibirFicha();
  print('');
  moto.exibirFicha();
}
