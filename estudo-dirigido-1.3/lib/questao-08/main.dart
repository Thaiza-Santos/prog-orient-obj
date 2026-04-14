import 'cupom.dart';

void main() {
  var cupom = CupomDesconto('PROMO10', 10.0, true);
 
  cupom.codigo = 'SUMMER20';
  cupom.percentual = 20.0;
 
  cupom.exibirCupom();
 
  double valor = 500.0;
  double desconto = cupom.calcularDesconto(valor);
  print('\nValor original: R\$ ${valor.toStringAsFixed(2)}');
  print('Desconto aplicado: R\$ ${desconto.toStringAsFixed(2)}');
  print('Valor final: R\$ ${(valor - desconto).toStringAsFixed(2)}');
 
  cupom.desativar();
  print('\nCom cupom inativo:');
  cupom.calcularDesconto(valor);
}