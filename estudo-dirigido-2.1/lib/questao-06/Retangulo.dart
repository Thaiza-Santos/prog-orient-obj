import 'Forma.dart';

class Retangulo extends Forma {
    late double _largura;
    late double _altura;

    Retangulo(String cor, double largura, double altura) : super(cor) {
        this.largura = largura;
        this.altura = altura;
    }

    double get largura => _largura;
    set largura(double l) {
        if (l > 0) {
            _largura = l;
        } else {
            _largura = 0;
        }
    }

    double get altura => _altura;
    set altura(double a) {
        if (a > 0) {
            _altura = a;
        } else {
            _altura = 0;
        }
    }

    @override
    double calcularArea() {
        return _largura * _altura;
    }

    @override
    void exibir() {
        super.exibir();
        print("Largura: ${largura}");
        print("Altura: ${altura}");
    }
}
