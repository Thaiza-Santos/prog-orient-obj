import 'cliente.dart';

void main() {
  var c1 = Cliente('Ana Silva', 'ana@email.com', 500.0, true);
  var c2 = Cliente('Bruno Costa', 'bruno@email.com', 200.0, true);
 
  c1.nome = 'Ana Paula Silva';
  c2.email = 'brunocosta@email.com';
 
  c1.adicionarSaldo(150.0);
  c2.debitarSaldo(80.0);
 
  c1.exibirCliente();
  c2.exibirCliente();
}