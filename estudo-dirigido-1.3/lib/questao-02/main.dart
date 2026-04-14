import '../questao-01/cliente.dart';
import 'listaCliente.dart';

void main() {
  var lista = ListaCliente();
 
  lista.inserir(Cliente('Ana Silva', 'ana@email.com', 500.0, true));
  lista.inserir(Cliente('Bruno Costa', 'bruno@email.com', 200.0, true));
  lista.inserir(Cliente('Carla Dias', 'carla@email.com', 350.0, false));
 
  print('Tamanho: ${lista.tamanho()}');
 
  print('\nCliente no índice 1:');
  lista.get(1)?.exibirCliente();
 
  lista.remover(0);
  print('\nApós remover índice 0:');
  lista.exibirLista();
}