abstract class Personagem {
  String nome;
  double vida;
  int nivel;

  Personagem(this.nome, this.vida, this.nivel) {
    if (nome.trim().isEmpty) {
      throw ArgumentError('O nome não pode ser vazio.');
    }

    if (vida < 0) {
      throw ArgumentError('A vida não pode ser negativa.');
    }

    if (nivel < 1) {
      throw ArgumentError('O nível deve ser maior ou igual a 1.');
    }
  }

  void receberDano(double dano) {
    if (dano > 0) {
      vida -= dano;

      if (vida < 0) {
        vida = 0;
      }
    }
  }

  bool estaVivo() {
    return vida > 0;
  }

  void exibirStatus();
}
