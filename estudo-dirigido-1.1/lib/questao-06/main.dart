import 'produto.dart';

void main() {
  Produto p = Produto(123, 'Camiseta', 50.0, 12);
  
  print("primeira simulação:");
  p.exibirResumo();

  p.nome = 'Camiseta Polo';
  p.precoUnitario = 70.0;
  p.quantidade = 5; 

  print("segunda simulação (Atributos alterados):");
  p.exibirResumo();
}