class Comodo {
  String nome;
  double tamanho;

  Comodo(this.nome, this.tamanho) {
    if (nome.isEmpty) {
      print("Erro: O nome do cômodo não pode ser vazio.");
    }
    if (tamanho <= 0) {
      print("Erro: O tamanho do cômodo deve ser maior que zero.");
    }
  }
}