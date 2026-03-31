class Relogio {
  int hora;
  int minuto;
  int segundo;

  Relogio(this.hora, this.minuto, this.segundo) {
    if (hora < 0 || hora > 23) {
      print("Erro: A hora deve ser entre 0 e 23.");
    }
    if (minuto < 0 || minuto > 59) {
      print("Erro: O minuto deve ser entre 0 e 59.");
    }
    if (segundo < 0 || segundo > 59) {
      print("Erro: O segundo deve ser entre 0 e 59.");
    }
  }

  void exibirHorario() {
    //padleft para adicionar zeros a esquerda
    String h = hora.toString().padLeft(2, '0');
    String m = minuto.toString().padLeft(2, '0');
    String s = segundo.toString().padLeft(2, '0');

    // exibindo a hora
    print('$h:$m:$s');  
  }

}