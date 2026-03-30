class Personagem {
  String nome;
  int vida;
  int ataque;

  Personagem(this.nome, this.vida, this.ataque) {
    if (nome.isEmpty) {
      print("Erro: O nome do personagem não pode ser vazio.");
    }
    if (vida <= 0) {
      print("Erro: A vida inicial deve ser maior que zero.");
      this.vida = 1;
    }
    if (ataque <= 0) {
      print("Erro: O ataque deve ser maior que zero.");
      this.ataque = 1; 
    }
  }

  bool estaVivo() {
    return vida > 0;
  }

  void atacar(Personagem inimigo) {
    if (!estaVivo()) {
      print("Ação negada: $nome não pode atacar porque está morto.");
      return;
    }

    print("$nome ataca ${inimigo.nome} causando $ataque de dano!");
    inimigo.vida -= ataque;

    if (inimigo.vida < 0) {
      inimigo.vida = 0;
    }
  }

  void exibirStatus() {
    String status = estaVivo() ? "Vivo" : "Derrotado";
    print("Personagem: $nome | Vida: $vida | Ataque: $ataque | Status: $status");
  }
}
