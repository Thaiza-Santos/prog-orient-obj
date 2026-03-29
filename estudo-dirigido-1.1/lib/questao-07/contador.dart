class Contador {
  int valor;

  // construtor: inicializa com um valor inicial
  // restrição: valor inicial deve ser maior ou igual a zero
  Contador(this.valor) {
    if (valor < 0) {
      this.valor = 0; // define valor como 0 se o valor inicial for negativo
      print("Aviso: Valor inicial negativo não permitido. Contador iniciado com valor 0.");
    }
  }

  // método para aumentar o contador em 1
  void incrementar() {
    valor++;
  }

  // método para diminuir o contador em 1
  void decrementar() {
    if (valor > 0) {
      valor--;
    } else {
      print("Aviso: Contador já está em 0 e não pode ser negativo.");
    }
  }

  // método para resetar o contador para zero
  void zerar() {
    valor = 0;
  }
  
  // método para exibir o valor atual do contador
  void exibirValor() {
    print("Valor atual do contador: $valor");
  }
}