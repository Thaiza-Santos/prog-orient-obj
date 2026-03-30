class Semaforo {
  String corAtual;
  int tempoRestante;

  Semaforo(this.corAtual, this.tempoRestante);

  void trocarCor() {
    if (corAtual == "vermelho") {
      corAtual = "verde";
      tempoRestante = 4; // regra
    } else if (corAtual == "verde") {
      corAtual = "amarelo";
      tempoRestante = 2; // regra
    } else if (corAtual == "amarelo") {
      corAtual = "vermelho";
      tempoRestante = 5; // regra
    }
  }

  void reduzirTempo() {
    if (tempoRestante > 0) {
      tempoRestante--;
    }

    if (tempoRestante == 0) {
      print("Tempo esgotado para a cor $corAtual. Trocando de cor...");
      trocarCor();
    }
  }
 void exibirEstado() {
  String emoji = "";
  if (corAtual == "vermelho") emoji = "🔴";
  else if (corAtual == "verde") emoji = "🟢";
  else if (corAtual == "amarelo") emoji = "🟡";

  print("Cor atual: $emoji, Tempo restante: $tempoRestante");
  }
}