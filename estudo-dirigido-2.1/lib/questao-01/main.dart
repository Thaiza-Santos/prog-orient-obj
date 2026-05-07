import 'Funcionario.dart';
import 'Gerente.dart';

int main() {
    print("CHAMADA DA CLASSE {FUNCIONARIO}");
    Funcionario f1 = new Funcionario("Cleverson", 1200);
    f1.exibirDados();

    print("");

    print("CHAMADA DA CLASSE {GERENTE}");
    Gerente g1 = new Gerente("Braz Magri", 4500, "TI");
    g1.exibirDados();

    return 0;
}