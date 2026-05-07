import 'Eletrodomestico.dart';

class Geladeira extends Eletrodomestico {
    late int _volume; // em litros
    late int _temperatura; // em graus Celsius

    Geladeira(String marca, String modelo, double potencia, int volume, int temperatura)
        : super(marca, modelo, potencia) {
        this.volume = volume;
        this.temperatura = temperatura;
    }

    int get volume => _volume;
    set volume(int v) {
        if (v > 0) {
            _volume = v;
        } else {
            _volume = 0;
        }
    }

    int get temperatura => _temperatura;
    set temperatura(int t) {
        // Temperatura válida entre -20°C e 10°C
        if (t >= -20 && t <= 10) {
            _temperatura = t;
        } else {
            _temperatura = 5;
        }
    }

    void ajustarTemperatura(int novaTemp) {
        temperatura = novaTemp;
        print("Temperatura ajustada para ${temperatura}°C.");
    }

    @override
    void exibir() {
        super.exibir();
        print("Volume: ${volume}L");
        print("Temperatura: ${temperatura}°C");
    }
}
