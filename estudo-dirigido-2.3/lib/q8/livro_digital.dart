import 'livro.dart';
import 'informativo.dart';

class LivroDigital extends Livro implements Informativo {
  int tamanhoArquivo;

  LivroDigital(String titulo, String autor, this.tamanhoArquivo)
      : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print(toString());
  }

  @override
  String toString() {
    return 'Livro Digital | Título: $titulo | Autor: $autor | Tamanho: $tamanhoArquivo MB';
  }
}
