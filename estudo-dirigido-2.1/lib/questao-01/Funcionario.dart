class Funcionario {
    late String _nome;
    late double _salario;

    Funcionario(String nome, double salario) {
        this.nome = nome;
        this.salario = salario;
    }

    String get nome => _nome;
    set nome(String n) {
        _nome = n;
    }

    double get salario => _salario;
    set salario(double s) {
        if (s <= 0) {
            _salario = 0;
        } else {
            _salario = s;
        }
    }

    void exibirDados() {
        print("Nome: ${nome}");
        print("Salário: R\$${salario}");
    }
}