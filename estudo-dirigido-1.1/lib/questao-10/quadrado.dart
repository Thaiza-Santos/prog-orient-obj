class Quadrado {
  double lado;
  String caractere;

  Quadrado(this.lado, this.caractere) {
    // lado > 0 e caractere não vazio e 1 simbolo
    if (lado <= 0) {
      print("Erro: O lado deve ser maior que zero.");
      lado = 1.0; // valor padrão para evitar problemas futuros
    }
    if (caractere.isEmpty || caractere.length > 1) {
      print("Erro: O caractere não pode ser vazio e deve ser um único símbolo.");
      caractere = '#'; // caractere padrão para evitar problemas futuros
    }
  }

  double calcularArea() => lado * lado;
  double calcularPerimetro() => 4 * lado;

  // método para desenhar o quadrado usando o caractere
  void desenhar() {
    print("Desenho do Quadrado (Lado: $lado):");
    int tamanho = lado.toInt(); // converte o lado para inteiro para desenhar
    for (int i = 0; i < tamanho; i++) {
      print(caractere * tamanho); // imprime uma linha do quadrado
    }
  print("");
  }

  void exibirResumo() {
    print("Resumo do Quadrado:");
    print("Lado: $lado");
    print("Área: ${calcularArea()}");
    print("Perímetro: ${calcularPerimetro()}");
    print("-----------------------------");
  }

  bool ehIgual(Quadrado outroQuadrado) {
    return this.lado == outroQuadrado.lado;
  }
}