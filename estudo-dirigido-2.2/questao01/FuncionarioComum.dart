import 'Funcionario.dart';

class FuncionarioComum extends Funcionario {
  FuncionarioComum(String nome, double salario) : super(nome, salario);

  @override
  void exibirDados() {
    print('Funcionário comum');
    print('Nome: $nome');
    print('Salário: R\$ ${salario.toStringAsFixed(2)}');
  }
}
