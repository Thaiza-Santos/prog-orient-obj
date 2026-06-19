import 'LivroDigital.dart';
import 'LivroFisico.dart';

void main() {
  LivroDigital digital =
      LivroDigital('Dom Casmurro', 'Machado de Assis', 2.5);
  LivroFisico fisico =
      LivroFisico('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 96);

  digital.exibirInformacoes();
  print('');
  fisico.exibirInformacoes();
}
