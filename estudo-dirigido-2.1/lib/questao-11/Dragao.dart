import 'Personagem.dart';
import 'Inimigo.dart';

class Dragao extends Inimigo {
  int _poderFogo;

  Dragao(String nome, int vida, int nivel, int recompensa, this._poderFogo)
      : super(nome, vida, nivel, recompensa);

  void soltarFogo(Personagem alvo) {
    print("$nome soltou fogo em ${alvo.nome}");
    alvo.receberDano(_poderFogo);
  }
}
