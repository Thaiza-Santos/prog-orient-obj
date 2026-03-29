class Circulo {
  double raio;
  String cor;

  Circulo(this.raio, this.cor) {
    if (raio <= 0) {
      print("Erro: O raio deve ser maior que zero.");
    }
    if (cor.isEmpty) {
      print("Erro: A cor não pode ser vazia.");
    }
  }

  double calcularArea() {
    return 3.14 * raio * raio;
  }

  double calcularPerimetro() {
    return 2 * 3.14 * raio;
  }

  void exibirResumo() {
    print("Resumo do Círculo:");
    print("Raio: $raio");
    print("Cor: $cor");
    print("Área: ${calcularArea().toStringAsFixed(2)}");
    print("Perímetro: ${calcularPerimetro().toStringAsFixed(2)}");
    print("-----------------------------");
  }
}