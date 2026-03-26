class Relogio {
  int hora;
  int minuto;
  int segundo;

  Relogio(this.hora, this.minuto, this.segundo);

  void exibirHorario() {
    //padleft para adicionar zeros a esquerda
    String h = hora.toString().padLeft(2, '0');
    String m = minuto.toString().padLeft(2, '0');
    String s = segundo.toString().padLeft(2, '0');

    // exibindo a hora
    print('$h:$m:$s');  
  }

}