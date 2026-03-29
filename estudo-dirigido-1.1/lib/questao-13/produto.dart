class Produto {
  int codigo;
  String nome;
  double precoUnitario;

  Produto(this.codigo, this.nome, this.precoUnitario);

  void exibirDados() {
    print("Produto: $nome (Código: $codigo) - Preço: R\$ ${precoUnitario.toStringAsFixed(2)}");
  }
}