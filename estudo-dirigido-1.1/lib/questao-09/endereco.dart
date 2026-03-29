class Endereco {
  String rua;
  int numero;
  String bairro;
  String cidade;
  String estado;
  int cep;

  Endereco(this.rua, this.numero, this.bairro, this.cidade, this.estado, this.cep);

  void exibirEndereco() {

    //formatar cep para o formato XXXXX-XXX
    String cepStr = cep.toString().padLeft(8, '0');
    String cepFormatado = '${cepStr.substring(0, 5)}-${cepStr.substring(5)}';
    
    print("Endereço: $rua, $numero, $bairro, $cidade/$estado (CEP: $cepFormatado)");
  }
}