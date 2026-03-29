class Motor {
  int potencia;
  String tipo;

  Motor(this.potencia, this.tipo) {
    if (potencia <= 0) {
      print("Erro: A potência deve ser maior que zero.");
    }
    if (tipo.isEmpty) {
      print("Erro: O tipo do motor não pode ser vazio.");
    }
  }

  void exibirMotor() {
    print("Dados do Motor - Tipo: $tipo, Potência: ${potencia} cv");
  }
}