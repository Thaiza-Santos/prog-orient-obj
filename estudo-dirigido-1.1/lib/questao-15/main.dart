import 'cofrinho.dart';

void main() {
  Cofrinho meuCofrinho = Cofrinho(10.0);

  print("Inicio do teste do cofrinho:");
  meuCofrinho.exibirSaldo(); //deve mostrar 10.0

  meuCofrinho.depositar(5.50); 
  meuCofrinho.depositar(20.00);
  meuCofrinho.depositar(100.00); 

  meuCofrinho.exibirSaldo(); //deve mostrar 135.50
  meuCofrinho.quebrar();
  meuCofrinho.exibirSaldo(); //deve mostrar 0.0
}