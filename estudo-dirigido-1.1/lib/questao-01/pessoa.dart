class Pessoa {
  // atributos [3]
  String? nome;
  int? idade;
  
  // construtor
  Pessoa(this.nome, this.idade);

  // método para exibir os dados da pessoa
  void exibirDados () {
    print('Nome: $nome');
    print('Idade: $idade');
  }

}