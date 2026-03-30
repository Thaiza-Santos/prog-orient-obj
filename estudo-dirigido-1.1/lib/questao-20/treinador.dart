import 'pokemon.dart';

class Treinador {
  String nome;
  Pokemon pokemon1;
  Pokemon pokemon2;
  Pokemon pokemon3;

  Treinador(this.nome, this.pokemon1, this.pokemon2, this.pokemon3) {
    if (nome.isEmpty) {
      print("Erro: O nome do treinador não pode ser vazio.");
    }
  }

  void exibirTime() {
    print("Treinador: $nome");
    pokemon1.exibirDados();
    pokemon2.exibirDados(); 
    pokemon3.exibirDados();
    print("------------------------------");
  }
  
  int calcularPoderTotal() {
    return pokemon1.nivel + pokemon2.nivel + pokemon3.nivel;
  }

  void pokemonMaisForte() {
    Pokemon forte = pokemon1;

    if (pokemon2.nivel > forte.nivel) {
      forte = pokemon2;
    }
    if (pokemon3.nivel > forte.nivel) {
      forte = pokemon3;
    }
    print("O Pokémon mais forte de $nome é ${forte.nome} (Nível: ${forte.nivel}).");
  }
}