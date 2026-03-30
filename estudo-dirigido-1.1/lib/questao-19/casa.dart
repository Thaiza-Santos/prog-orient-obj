import 'comodo.dart';

class Casa {
  String proprietario;
  Comodo comodo1;
  Comodo comodo2;
  Comodo comodo3;

  Casa(this.proprietario, this.comodo1, this.comodo2, this.comodo3) {
    if (proprietario.isEmpty) {
      print("Erro: O nome do proprietário não pode ser vazio.");
    }
  }

  double calcularAreaTotal() {
    return comodo1.tamanho + comodo2.tamanho + comodo3.tamanho;
  }

  void exibirCasa() {
    print("Informações da Casa:");
    print("Proprietário: $proprietario");
    print("Cômodo 1: ${comodo1.nome} - ${comodo1.tamanho} m²");
    print("Cômodo 2: ${comodo2.nome} - ${comodo2.tamanho} m²");
    print("Cômodo 3: ${comodo3.nome} - ${comodo3.tamanho} m²");
    print("Área total da casa: ${calcularAreaTotal()} m²");
    print("------------------------------\n");
  }
}