import 'ligavel.dart';
import 'smartphone.dart';
import 'notebook.dart';
import 'televisao.dart';
import 'lista_generica.dart';

void main() {
  ListaGenerica<Ligavel> dispositivos = ListaGenerica<Ligavel>();

  Ligavel dispositivo1 = Smartphone('Samsung', 'Galaxy S24', 'Android');
  Ligavel dispositivo2 = Smartphone('Apple', 'iPhone 15', 'iOS');
  Ligavel dispositivo3 = Notebook('Dell', 'Inspiron', 16);
  Ligavel dispositivo4 = Notebook('Lenovo', 'ThinkPad', 32);
  Ligavel dispositivo5 = Televisao('LG', 'OLED55', 55);

  dispositivos.adicionar(dispositivo1);
  dispositivos.adicionar(dispositivo2);
  dispositivos.adicionar(dispositivo3);
  dispositivos.adicionar(dispositivo4);
  dispositivos.adicionar(dispositivo5);

  print('--- Impressão dos dispositivos ---');
  dispositivos.imprimirItens();

  print('\n--- Ligando e desligando via interface ---');
  for (var dispositivo in dispositivos.obterItens()) {
    dispositivo.ligar();
    dispositivo.desligar();
    print('');
  }
}
