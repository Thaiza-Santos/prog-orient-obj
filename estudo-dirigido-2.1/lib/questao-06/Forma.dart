class Forma {
    late String _cor;

    Forma(String cor) {
        this.cor = cor;
    }

    String get cor => _cor;
    set cor(String c) {
        if (c != '') {
            _cor = c;
        } else {
            _cor = "Cor não informada";
        }
    }

    double calcularArea() {
        return 0.0;
    }

    void exibir() {
        print("🔷 Dados da Forma -----");
        print("Cor: ${cor}");
        print("Área: ${calcularArea().toStringAsFixed(2)}");
    }
}
