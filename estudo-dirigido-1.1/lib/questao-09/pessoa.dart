import 'endereco.dart';

class Pessoa {
  String nome;
  int idade;
  String cpf;
  Endereco endereco;

  Pessoa(this.nome, this.idade, this.cpf, this.endereco) {
    if (nome.isEmpty) {
      print("Erro: O nome não pode ser vazio.");
    }
    if (idade < 0) {
      print("Erro: A idade deve ser maior ou igual a zero.");
    }
    if (cpf.isEmpty) {
      print("Erro: O CPF não pode ser vazio.");
    }
  }

  void exibirPessoa() {
    print("Dados da Pessoa:");
    print("Nome: $nome");
    print("Idade: $idade anos");
    print("CPF: $cpf");
    endereco.exibirEndereco();
    print(" -----------------------------\n");
  }
}