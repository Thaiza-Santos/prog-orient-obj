import 'treinador.dart';
import 'pokemon.dart';

void main() {
  Pokemon p1 = Pokemon(1, "Pikachu", "Elétrico", 50, 35);
  Pokemon p2 = Pokemon(2, "Bulbasaur", "Planta", 45, 45);
  Pokemon p3 = Pokemon(3, "Charmander", "Fogo", 40, 39);

  Treinador treinador = Treinador("Ash", p1, p2, p3);

  treinador.exibirTime();
  print("Poder Total do Time: ${treinador.calcularPoderTotal()}");
  treinador.pokemonMaisForte();
}