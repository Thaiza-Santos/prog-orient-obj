import 'dart:math';

class Triangulo {
  double lado1;
  double lado2;
  double lado3;
  String caractere;

  Triangulo(this.lado1, this.lado2, this.lado3, this.caractere) {
    _validarRestricoes();
    }
  
  set atualizarlado1(double v) {
    lado1 = v;
    _validarRestricoes();
  }
  set atualizarlado2(double v) {
    lado2 = v;
    _validarRestricoes();
  }
  set atualizarlado3(double v) {
    lado3 = v;
    _validarRestricoes();
  }

  void _validarRestricoes() {
    if (lado1 <= 0 || lado2 <= 0 || lado3 <= 0) {
      print("Erro: Os lados do triângulo devem ser maiores que zero.");
    }
    if (lado1 + lado2 <= lado3 || lado1 + lado3 <= lado2 || lado2 + lado3 <= lado1) {
      print("Erro: A soma de dois lados deve ser maior que o terceiro.");
    }
    if (caractere.isEmpty || caractere.length > 1) {
      print("Erro: O caractere não pode ser vazio e deve ser um único símbolo.");
      caractere = '#'; // caractere padrão para evitar problemas futuros
    }
  }

  //perimetro
  calcularPerimetro() => lado1 + lado2 + lado3;

  //area usando a fórmula de Heron
  calcularArea() {
    double s = calcularPerimetro() / 2; // semiperímetro
    return sqrt(s * (s - lado1) * (s - lado2) * (s - lado3));
  } 

  //desenha o triangulo alinhado à esquerda
  void desenharEsquerda() {
    print("Desenho alinhado à esquerda (Altura baseada no Lado 1):)");
    int altura = lado1.toInt(); // altura baseada no lado1 para desenhar
    for (int i = 1; i <= altura; i++) {
      print(caractere * i); // imprime uma linha do triângulo
    }
    print("");
  }

  //desenha o triangulo centralizado
  void desenharCentralizado() {
    print("Desenho centralizado (Altura baseada no Lado 1):)");
    int altura = lado1.toInt(); // altura baseada no lado1 para desenhar
    for (int i = 1; i <= altura; i++) {
      String espacos = ' ' * (altura - i); // calcula os espaços para centralizar
      String simbolos = caractere * (2 * i - 1); // calcula os símbolos para a linha atual
      print("$espacos$simbolos"); // imprime uma linha do triângulo
    }
    print("");
  }

  void exibirResumo() {
    print("Resumo do Triângulo:");
    print("Lados: $lado1, $lado2, $lado3");
    print("Perímetro: ${calcularPerimetro().toStringAsFixed(2)}");
    print("Área: ${calcularArea().toStringAsFixed(2)}");
    print("-----------------------------");
  }
}