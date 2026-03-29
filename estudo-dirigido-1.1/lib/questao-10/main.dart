import 'quadrado.dart';

void main() {
  Quadrado q1 = Quadrado(3, "*");
  Quadrado q2 = Quadrado(5, "@");

  Quadrado q3 = Quadrado(4, "#");
  Quadrado q4 = Quadrado(4, "#");

  print("Teste quadrados diferentes:");
  q1.exibirResumo();
  q1.desenhar();

  q2.exibirResumo();
  q2.desenhar();

  print("Teste quadrados diferentes:");
  q3.exibirResumo();
  q3.desenhar();
  q4.exibirResumo(); 

  print("Comparação entre q1 e q2: ${q1.ehIgual(q2) ? 'Iguais' : 'Diferentes'}");
  print("Comparação entre q3 e q4: ${q3.ehIgual(q4) ? 'Iguais' : 'Diferentes'}");
}