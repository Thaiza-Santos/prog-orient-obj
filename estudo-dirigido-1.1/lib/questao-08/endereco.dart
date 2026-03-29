class Endereco {
  String rua;
  int numero;
  String bairro;
  String cidade;
  String estado;
  int cep;

  Endereco(this.rua, this.numero, this.bairro, this.cidade, this.estado, this.cep) {
    if (rua.isEmpty || bairro.isEmpty || cidade.isEmpty || estado.isEmpty) {
      print("Erro: Nenhum dos campos pode ser vazio.");
    }

    if (numero <= 0) {
      print("Erro: Número deve ser positivo.");
    }
    if (cep < 0) {
      print("Erro: CEP deve ser positivo.");
    }
  }

  void exibirEndereco() {

    //formatar cep para o formato XXXXX-XXX
    String cepStr = cep.toString().padLeft(8, '0');
    String cepFormatado = '${cepStr.substring(0, 5)}-${cepStr.substring(5)}';
    
    print("Endereço Completo:");
    print('Rua: $rua, Número: $numero');
    print('Bairro: $bairro');
    print('Cidade: $cidade, Estado: $estado');
    print('CEP: $cepFormatado');
    print("-----------------------------");
  }
}