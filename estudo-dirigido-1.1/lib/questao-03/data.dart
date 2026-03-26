class Data {
  int dia;
  int mes;
  int ano;

  Data(this.dia, this.mes, this.ano);

  void exibirData() {
    //padleft para adicionar zeros a esquerda
    String d = dia.toString().padLeft(2, '0');
    String m = mes.toString().padLeft(2, '0');
    String a = ano.toString();

    // exibindo a data
    print('$d/$m/$a');  
  }
}