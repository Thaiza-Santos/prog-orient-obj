import 'contador.dart';

void main() {
  Contador c1 = Contador(5);
  Contador c2 = Contador(0);

  print("Teste do contador 1:");
  c1.exibirValor();
  c1.incrementar();
  c1.incrementar();
  c1.exibirValor(); //deve mostrar 7
  c1.decrementar();
  c1.exibirValor(); //deve mostrar 6
  c1.zerar();
  c1.exibirValor(); //deve mostrar 0

  print("\nTeste do contador 2:");
  c2.exibirValor(); //deve mostrar 0
  c2.decrementar(); //deve mostrar aviso
  c2.exibirValor(); //deve mostrar 0
  c2.incrementar();
  c2.exibirValor(); //deve mostrar 1

}
