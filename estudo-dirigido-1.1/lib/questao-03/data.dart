class Data {
  int dia;
  int mes;
  int ano;

  Data(this.dia, this.mes, this.ano) {
    if (dia < 1 || dia > 31) {
      print("Erro: O dia deve ser entre 1 e 31.");
    }
    if (mes < 1 || mes > 12) {
      print("Erro: O mês deve ser entre 1 e 12.");
    }
    if (ano < 0) {
      print("Erro: O ano deve ser maior ou igual a zero.");
    }
  }

  void exibirData() {
    //padleft para adicionar zeros a esquerda
    String d = dia.toString().padLeft(2, '0');
    String m = mes.toString().padLeft(2, '0');
    String a = ano.toString().padLeft(4, '0');
    // exibindo a data
    print('$d/$m/$a');  
  }
}