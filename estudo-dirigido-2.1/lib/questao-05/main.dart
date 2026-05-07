import 'Animal.dart';
import 'Cachorro.dart';

void main() {
    print("CHAMADA DA CLASSE {ANIMAL}");
    Animal a1 = new Animal("Whiskers", "Felino", 3);
    a1.exibirDados();
    a1.emitirSom();

    print("");

    print("CHAMADA DA CLASSE {CACHORRO}");
    Cachorro c1 = new Cachorro("Rex", "Canino", 5, "Pastor Alemão");
    c1.exibirDados();
    c1.emitirSom();
}
