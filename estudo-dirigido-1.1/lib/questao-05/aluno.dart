class Aluno {
  String nome;
  double nota1;
  double nota2;

  Aluno(this.nome, this.nota1, this.nota2) {
    if (nota1 < 0 || nota1 > 10 || nota2 < 0 || nota2 > 10) {
      throw ArgumentError('Notas devem estar entre 0 e 10.');
    }
  }

  double calcularMedia() {
    return (nota1 + nota2) / 2;
  }
  String verificarAprovacao() {
    if (calcularMedia() >= 6.0) {
      return 'Aprovado';
    } else {
      return 'Reprovado';
    }
  }
  
  void exibirBoletim() {
    print("Boletim do Aluno:");
    print('Aluno: $nome');
    print('Nota 1: $nota1');
    print('Nota 2: $nota2');
    print('Média: ${calcularMedia().toStringAsFixed(1)}');
    print('Situação: ${verificarAprovacao()}');
    print("-----------------------------");
  }
}