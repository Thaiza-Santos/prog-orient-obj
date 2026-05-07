class Veiculo {
    late String _marca;
    late String _modelo;
    late int _ano;

    Veiculo(String marca, String modelo, int ano) {
        this.marca = marca;
        this.modelo = modelo;
        this.ano = ano;
    }

    String get marca => _marca;
    set marca(String m) {
        if (m != '') {
            _marca = m;
        } else {
            _marca = "Marca não informada";
        }
    }

    String get modelo => _modelo;
    set modelo(String m) {
        if (m != '') {
            _modelo = m;
        } else {
            _modelo = "Modelo não informado";
        }
    }

    int get ano => _ano;
    set ano(int a) {
        if (a >= 0) {
            _ano = a;
        } else {
            _ano = 0000;
        }
    }

    void exibirFicha() {
        print("🔹 Ficha -----");
        print("Marca: ${marca}");
        print("Modelo: ${modelo}");
        print("Ano: ${ano}");
    }
}