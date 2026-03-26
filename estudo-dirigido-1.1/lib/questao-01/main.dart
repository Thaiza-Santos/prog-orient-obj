import 'pessoa.dart';

void main() {
  // instanciando 3 pessoas
  Pessoa p1 = Pessoa('Fulano', 30);
  Pessoa p2 = Pessoa('Ciclano', 25);
  Pessoa p3 = Pessoa('Beltrano', 40);
  
  // exibindo os dados da pessoa
  p1.exibirDados();
  p2.exibirDados();
  p3.exibirDados();
}