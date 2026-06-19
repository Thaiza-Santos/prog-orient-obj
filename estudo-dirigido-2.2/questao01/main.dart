import 'FuncionarioComum.dart';
import 'Gerente.dart';

void main() {
  FuncionarioComum funcionario = FuncionarioComum('João', 2500.00);
  Gerente gerente = Gerente('Maria', 6000.00, 'Financeiro');

  funcionario.exibirDados();
  print('');
  gerente.exibirDados();
}
