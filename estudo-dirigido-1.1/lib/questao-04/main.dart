import 'lampada.dart';

void main() {
  // instanciando a classe Data
  Lampada minhalampada = Lampada();

  print("Testando a lâmpada:");
  minhalampada.exibirEstado(); // deve mostrar desligada e não queimada

  // simulando ligações
  // na quinta ligação, a lâmpada deve queimar
  for (int i = 1; i <= 6; i++) {
    print("Tentativa numero $i de ligar a lâmpada:");
    minhalampada.ligar();
    minhalampada.exibirEstado(); // deve mostrar ligada ou queimada

  // só desligar a lâmpada se ela não estiver queimada
    if (!minhalampada.queimada) {
      minhalampada.desligar(); // desligando a lâmpada
    }

    print("Fim da simulação da tentativa numero $i\n");
  }
}