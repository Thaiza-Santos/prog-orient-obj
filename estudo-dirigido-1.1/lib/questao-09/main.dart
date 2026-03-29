import 'endereco.dart';
import 'pessoa.dart'; 

void main() {
  Endereco e1 = Endereco("Av. Paulista", 1000, "Bela Vista", "São Paulo", "SP", 01310100);
  Endereco e2 = Endereco("Rua das Flores", 45, "Centro", "Curitiba", "PR", 80010000);
  Endereco e3 = Endereco("Rua Sete de Setembro", 123, "Vila Nova", "Blumenau", "SC", 89035000);

  Pessoa p1 = Pessoa("João Silva", 30, "123.456.789-00", e1);
  Pessoa p2 = Pessoa("Maria Oliveira", 25, "987.654.321-00", e2);
  Pessoa p3 = Pessoa("Carlos Souza", -5, "", e3); // Teste de validação

  p1.exibirPessoa();
  p2.exibirPessoa();
  p3.exibirPessoa();
}