import 'Forma.dart';
import 'Retangulo.dart';

void main() {
    print("CHAMADA DA CLASSE {FORMA}");
    Forma f1 = new Forma("Azul");
    f1.exibir();

    print("");

    print("CHAMADA DA CLASSE {RETANGULO}");
    Retangulo r1 = new Retangulo("Vermelho", 8.0, 5.0);
    r1.exibir();
}
