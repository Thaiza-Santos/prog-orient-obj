import 'Veiculo.dart';

class Carro extends Veiculo {
    late int _qtdPortas;

    Carro(String marca, String modelo, int ano, int qtd) : super(marca, modelo, ano) {
        this.qtdPortas = qtd;
    }

    int get qtdPortas => _qtdPortas;
    set qtdPortas(int qtd) {
        // Para veículos de até 6 portas !!
        if (qtd >= 2 && qtd <= 6) {
            _qtdPortas = qtd;
        } else {
            // Número mínimo de portas em um carro
            _qtdPortas = 2;
        }
    }

    @override
    void exibirFicha() {
        super.exibirFicha();
        print("Qtd. Portas: ${qtdPortas}");
    }
}