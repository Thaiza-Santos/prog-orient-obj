import 'Animal.dart';

class Cachorro extends Animal {
    late String _raca;

    Cachorro(String nome, String especie, int idade, String raca)
        : super(nome, especie, idade) {
        this.raca = raca;
    }

    String get raca => _raca;
    set raca(String r) {
        if (r != '') {
            _raca = r;
        } else {
            _raca = "Raça não informada";
        }
    }

    @override
    void emitirSom() {
        print("${nome} diz: Au au!");
    }

    @override
    void exibirDados() {
        super.exibirDados();
        print("Raça: ${raca}");
    }
}
