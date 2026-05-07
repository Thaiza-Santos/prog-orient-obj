class Animal {
    late String _nome;
    late String _especie;
    late int _idade;

    Animal(String nome, String especie, int idade) {
        this.nome = nome;
        this.especie = especie;
        this.idade = idade;
    }

    String get nome => _nome;
    set nome(String n) {
        if (n != '') {
            _nome = n;
        } else {
            _nome = "Nome não informado";
        }
    }

    String get especie => _especie;
    set especie(String e) {
        if (e != '') {
            _especie = e;
        } else {
            _especie = "Espécie não informada";
        }
    }

    int get idade => _idade;
    set idade(int i) {
        if (i >= 0) {
            _idade = i;
        } else {
            _idade = 0;
        }
    }

    void emitirSom() {
        print("${nome} emitiu um som.");
    }

    void exibirDados() {
        print("🐾 Dados do Animal -----");
        print("Nome: ${nome}");
        print("Espécie: ${especie}");
        print("Idade: ${idade} ano(s)");
    }
}
