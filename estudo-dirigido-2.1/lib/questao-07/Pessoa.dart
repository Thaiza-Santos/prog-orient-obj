class Pessoa {
    late String _nome;
    late int _idade;
    late String _cpf;

    Pessoa(String nome, int idade, String cpf) {
        this.nome = nome;
        this.idade = idade;
        this.cpf = cpf;
    }

    String get nome => _nome;
    set nome(String n) {
        if (n != '') {
            _nome = n;
        } else {
            _nome = "Nome não informado";
        }
    }

    int get idade => _idade;
    set idade(int i) {
        if (i >= 0 && i <= 150) {
            _idade = i;
        } else {
            _idade = 0;
        }
    }

    String get cpf => _cpf;
    set cpf(String c) {
        if (c != '') {
            _cpf = c;
        } else {
            _cpf = "CPF não informado";
        }
    }

    void exibirDados() {
        print("👤 Dados da Pessoa -----");
        print("Nome: ${nome}");
        print("Idade: ${idade}");
        print("CPF: ${cpf}");
    }
}
