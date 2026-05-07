import 'Produto.dart';
import 'ProdutoPerecivel.dart';

int main() {
    // PRODUTO 1
    DateTime validade_p1 = DateTime(2026, 12, 31);
    ProdutoPerecivel pp1 = new ProdutoPerecivel("Sucrilhos", 20, validade_p1);
    pp1.exibir();

    // PRODUTO 2
    DateTime validade_p2 = DateTime(2030, 12, 31);
    ProdutoPerecivel pp2 = new ProdutoPerecivel("Feijão Enlatado", 15, validade_p2);
    pp2.exibir();
    
    // PRODUTO 3
    DateTime validade_p3 = DateTime(0000, 00, 00);
    ProdutoPerecivel pp3 = new ProdutoPerecivel("Mel", 30, validade_p3);
    pp3.exibir();

    return 0;
}