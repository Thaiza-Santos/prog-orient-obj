class Produto {
    late String _nome;
    late double _preco;

    Produto(String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
    }

    String get nome => _nome;
    set nome(String n) {
        _nome = n;
    }

    double get preco => _preco;
    set preco(double s) {
        if (s <= 0) {
            _preco = 0;
        } else {
            _preco = s;
        }
    }

    void exibir() {
        print("Nome: ${nome}");
        print("Preço: R\$${preco}");
    }
}