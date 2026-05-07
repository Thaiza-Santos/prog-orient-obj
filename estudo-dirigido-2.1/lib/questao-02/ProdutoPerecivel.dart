import 'Produto.dart';

class ProdutoPerecivel extends Produto {
    final DateTime dataValidade;

    ProdutoPerecivel(String nome, double preco, this.dataValidade) : super(nome, preco);

    @override
    void exibir() {
        super.exibir();
        print("Validade: ${dataValidade}");
        print("");
    }
}