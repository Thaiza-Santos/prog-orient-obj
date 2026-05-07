import 'Pessoa.dart';
import 'Aluno.dart';

void main() {
    print("CHAMADA DA CLASSE {PESSOA}");
    Pessoa p1 = new Pessoa("Carlos Silva", 40, "123.456.789-00");
    p1.exibirDados();

    print("");

    print("CHAMADA DA CLASSE {ALUNO}");
    Aluno a1 = new Aluno("Mariana Costa", 21, "987.654.321-00", "2024001", "Engenharia de Software", 8.5);
    a1.exibirDados();
}
