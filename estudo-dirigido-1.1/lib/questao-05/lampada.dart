class Lampada {
  bool  ligada;
  int quantidadedeLigacoes  ;
  bool  queimada;

  // construtor inicializa como desligada, 0 ligações e não queimada
  Lampada ()
  : ligada = false,
    quantidadedeLigacoes = 0, 
    queimada = false;
  
  void ligar() {
    if (queimada) {
      print('A lâmpada está queimada e não pode ser ligada.');
    } else if (ligada) {
      print('Lâmpada ligada.');
      return;
    }

    if (!ligada) {
      ligada = true;
      quantidadedeLigacoes++;
      print('Lâmpada ligada. Total de ligações: $quantidadedeLigacoes');

      if (quantidadedeLigacoes >= 5) {
        queimada = true;
        ligada = false; // a lâmpada queima e desliga
        print('A lâmpada queimou após 5 ligações.');
      }
    } else {
      print('A lâmpada já está ligada.');
    }
  }

  void desligar() {
    if (ligada) {
      ligada = false;
      print('Lâmpada desligada.');
    } else {
      print('A lâmpada já está desligada.');
    }
  }

  void exibirEstado() {
    if (queimada) {
      print('A lâmpada está queimada.');
    } else if (ligada) {
      print('A lâmpada está ligada.');
    } else {
      print('A lâmpada está desligada.');
    }
  }

  }