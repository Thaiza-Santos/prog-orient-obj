import 'IngressoVip.dart';
import 'IngressoPromocional.dart';

void main() {
  IngressoVip vip = IngressoVip('Show', 100.00, 50.00);
  IngressoPromocional promocional =
      IngressoPromocional('Show', 100.00, 20.00);

  print('Ingresso VIP: R\$ ${vip.valorFinal().toStringAsFixed(2)}');
  print(
    'Ingresso promocional: R\$ ${promocional.valorFinal().toStringAsFixed(2)}',
  );
}
