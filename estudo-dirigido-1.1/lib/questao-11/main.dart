import 'triangulo.dart';

void main() {
  Triangulo t1 = Triangulo(5, 5, 5, "*"); // triângulo equilátero
  Triangulo t2 = Triangulo(4, 5, 6, "#"); // triângulo escaleno 

  print("Teste do triângulo 1:");
  t1.exibirResumo();
  t1.desenharEsquerda();
  t1.desenharCentralizado();

  print("Teste do triângulo 2:");
  t2.exibirResumo();
  t2.desenharEsquerda();
  t2.desenharCentralizado();
}