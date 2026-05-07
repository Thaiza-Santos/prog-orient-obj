class Personagem {
  String _nome;
  int _vida;
  int _nivel;

  Personagem(this._nome, this._vida, this._nivel) {
    if (_nome.isEmpty) throw Exception("Nome inválido");
    if (_vida < 0) throw Exception("Vida inválida");
    if (_nivel < 1) throw Exception("Nível inválido");
  }

  String get nome => _nome;
  int get vida => _vida;
  int get nivel => _nivel;

  void exibirStatus() {
    print("Nome: $_nome | Vida: $_vida | Nível: $_nivel");
  }

  void receberDano(int dano) {
    _vida -= dano;
    if (_vida < 0) _vida = 0;
  }

  bool estaVivo() {
    return _vida > 0;
  }
}
