class Pessoa {
  // atributos [3]
  String? nome;
  int? idade;
  
  // construtor
  Pessoa(this.nome, this.idade) {
    if (nome == null || nome!.isEmpty) {
      print("Erro: O nome não pode ser vazio.");
    }
    if (idade == null || idade! < 0) {
      print("Erro: A idade deve ser maior ou igual a zero.");
    }
  }

  // método para exibir os dados da pessoa
  void exibirDados () {
    print('Nome: $nome');
    print('Idade: $idade');
  }

}