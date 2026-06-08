abstract class Animal {
  String nome;

  Animal(this.nome);

  @override
  String toString() {
    return 'Nome: $nome';
  }
}
