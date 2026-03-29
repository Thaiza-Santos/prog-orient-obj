import 'aluno.dart';

void main() {
  List<Aluno> turma = [
    Aluno('João', 7.5, 8.0),
    Aluno('Maria', 5.0, 6.0),
    Aluno('Pedro', 4.0, 3.5),
    Aluno('Ana', 9.5, 8.8),
    Aluno('Carlos', 6.0, 6.2),
    Aluno('Beatriz', 2.5, 7.0),
    Aluno('Rodrigo', 10.0, 9.4),
    Aluno('Fernanda', 5.9, 6.1),
    Aluno('Renata', 6.0, 6.0),
    Aluno('Lucas', 8.2, 7.1),
  ];

  for (var aluno in turma) {
    aluno.exibirBoletim();
  }
}