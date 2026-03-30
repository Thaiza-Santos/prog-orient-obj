import 'semaforo.dart';

void main() {
  Semaforo semaforo = Semaforo("vermelho", 5);

  print("Início da simulação do semáforo:\n");

  for (int i = 1; i <= 15; i++) {
    print("Segundo: $i");
    semaforo.exibirEstado();
    semaforo.reduzirTempo();

    print("------------------------------");
  }
}