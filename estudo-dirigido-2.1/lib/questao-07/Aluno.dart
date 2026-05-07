import 'Pessoa.dart';

class Aluno extends Pessoa {
    late String _matricula;
    late String _curso;
    late double _coeficiente;

    Aluno(String nome, int idade, String cpf, String matricula, String curso, double coeficiente)
        : super(nome, idade, cpf) {
        this.matricula = matricula;
        this.curso = curso;
        this.coeficiente = coeficiente;
    }

    String get matricula => _matricula;
    set matricula(String m) {
        if (m != '') {
            _matricula = m;
        } else {
            _matricula = "Matrícula não informada";
        }
    }

    String get curso => _curso;
    set curso(String c) {
        if (c != '') {
            _curso = c;
        } else {
            _curso = "Curso não informado";
        }
    }

    double get coeficiente => _coeficiente;
    set coeficiente(double c) {
        if (c >= 0.0 && c <= 10.0) {
            _coeficiente = c;
        } else {
            _coeficiente = 0.0;
        }
    }

    @override
    void exibirDados() {
        super.exibirDados();
        print("Matrícula: ${matricula}");
        print("Curso: ${curso}");
        print("Coeficiente: ${coeficiente.toStringAsFixed(1)}");
    }
}
