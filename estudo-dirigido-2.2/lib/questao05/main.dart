import 'Aluno.dart';
import 'Professor.dart';

void main() {
  Aluno aluno = Aluno('Lucas', 20, '2026001', 'Sistemas de Informação');
  Professor professor = Professor('Marcos', 40, 'POO', 7000.00);

  aluno.exibirDados();
  print('');
  professor.exibirDados();
}
