import 'endereco.dart';

void main() {
  Endereco e1 = Endereco("Av. Paulista", 1000, "Bela Vista", "São Paulo", "SP", 01310100);
  Endereco e2 = Endereco("Rua das Flores", 45, "Centro", "Curitiba", "PR", 80010000);
  Endereco e3 = Endereco("Rua Sete de Setembro", 123, "Vila Nova", "Blumenau", "SC", 89035000);

  e1.exibirEndereco();
  e2.exibirEndereco();
  e3.exibirEndereco();
}
