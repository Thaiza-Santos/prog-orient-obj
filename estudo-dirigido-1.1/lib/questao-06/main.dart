import 'produto.dart';

void main() {
  Produto p = Produto(123, 'Camiseta', 50.0, 12);
  
  print("Primeira Simulação:");
  p.exibirResumo();

  p.nome = 'Camiseta Polo';
  p.precoUnitario = 70.0;
  p.quantidade = 5; 

  print("Segunda Simulação (Atributos alterados):");
  p.exibirResumo();
}