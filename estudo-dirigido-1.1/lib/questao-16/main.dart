import 'personagem.dart';

void main() {
  Personagem p1 = Personagem("Guerreiro", 100, 20);
  Personagem p2 = Personagem("Mago", 80, 25);

  print("O combate começou!");
  p1.exibirStatus();
  p2.exibirStatus();
  print("------------------------------\n");

  int turno = 1;
  while (p1.estaVivo() && p2.estaVivo()) {
    print("Turno $turno:");

    p1.atacar(p2);
    p1.exibirStatus();

    if (!p2.estaVivo()) {
      p2.atacar(p1);
      p1.exibirStatus();
    }
    
    print("------------------------------\n");
    turno++;
  }

  print("O combate terminou!");
  if (p1.estaVivo()) {
    print("${p1.nome} venceu!");
  } else {
    print("${p2.nome} venceu!");
  }
}