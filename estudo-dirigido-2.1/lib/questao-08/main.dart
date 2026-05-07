import 'Eletrodomestico.dart';
import 'Geladeira.dart';

void main() {
    print("CHAMADA DA CLASSE {ELETRODOMESTICO}");
    Eletrodomestico e1 = new Eletrodomestico("Philips", "Ferro de Passar", 1200);
    e1.exibir();
    e1.ligar();
    e1.desligar();

    print("");

    print("CHAMADA DA CLASSE {GELADEIRA}");
    Geladeira g1 = new Geladeira("Brastemp", "BRM44HB", 70, 375, 5);
    g1.exibir();
    g1.ligar();
    g1.ajustarTemperatura(-2);
    g1.exibir();
}
