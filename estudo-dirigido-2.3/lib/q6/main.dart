import 'calculavel.dart';
import 'ingresso_vip.dart';
import 'ingresso_promocional.dart';
import 'ingresso_camarote.dart';
import 'lista_generica.dart';

void main() {
  ListaGenerica<Calculavel> ingressos = ListaGenerica<Calculavel>();

  Calculavel ingresso1 = IngressoVip('Show Rock', 200.00, 80.00);
  Calculavel ingresso2 = IngressoPromocional('Teatro Infantil', 100.00, 20.00);
  Calculavel ingresso3 = IngressoCamarote('Festival Jazz', 300.00, 50.00, 'Setor A');
  Calculavel ingresso4 = IngressoPromocional('Cinema Especial', 60.00, 15.00);
  Calculavel ingresso5 = IngressoVip('Show Pop', 180.00, 70.00);

  ingressos.adicionar(ingresso1);
  ingressos.adicionar(ingresso2);
  ingressos.adicionar(ingresso3);
  ingressos.adicionar(ingresso4);
  ingressos.adicionar(ingresso5);

  print('--- Impressão dos ingressos ---');
  ingressos.imprimirItens();

  print('\n--- Valores finais via interface ---');
  for (var ingresso in ingressos.obterItens()) {
    print('Valor final: R\$ ${ingresso.valorFinal().toStringAsFixed(2)}');
  }
}
