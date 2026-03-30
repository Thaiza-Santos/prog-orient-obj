import 'relogio.dart';

void main() {
  // instanciando relogio
  Relogio r1 = Relogio(10, 30, 45);
  Relogio r2 = Relogio(15, 45, 30);
  Relogio r3 = Relogio(20, 15, 0);

  // exibindo a hora do relogio
  print("Relógios (HH:MM:SS):");
  r1.exibirHorario();
  r2.exibirHorario();
  r3.exibirHorario();
}