class Pokemon {
  int numero;
  String nome;
  String tipo;
  int nivel;
  int hp;

  Pokemon(this.numero, this.nome, this.tipo, this.nivel, this.hp) {
    if (nivel < 1 || nivel > 100) {
      print("Erro: O nível do Pokémon deve estar entre 1 e 100.");
    }
    if (hp <= 0) {
      print("Erro: O HP do Pokémon deve ser maior que zero.");
    }
    if (tipo.isEmpty) {
      print("Erro: O tipo do Pokémon não pode ser vazio.");
    }
  }

  void exibirDados() {
    print("Pokemon #$numero: $nome | Tipo: $tipo | Nível: $nivel | HP: $hp");
  }
}