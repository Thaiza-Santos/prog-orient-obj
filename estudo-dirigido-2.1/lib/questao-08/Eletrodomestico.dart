class Eletrodomestico {
    late String _marca;
    late String _modelo;
    late double _potencia; // em Watts
    late bool _ligado;

    Eletrodomestico(String marca, String modelo, double potencia) {
        this.marca = marca;
        this.modelo = modelo;
        this.potencia = potencia;
        this._ligado = false;
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

    double get potencia => _potencia;
    set potencia(double p) {
        if (p > 0) {
            _potencia = p;
        } else {
            _potencia = 0;
        }
    }

    bool get ligado => _ligado;

    void ligar() {
        _ligado = true;
        print("${marca} ${modelo} ligado.");
    }

    void desligar() {
        _ligado = false;
        print("${marca} ${modelo} desligado.");
    }

    void exibir() {
        print("🔌 Dados do Eletrodoméstico -----");
        print("Marca: ${marca}");
        print("Modelo: ${modelo}");
        print("Potência: ${potencia}W");
        print("Status: ${ligado ? 'Ligado' : 'Desligado'}");
    }
}
