import '../models/frase_model.dart';

class PrincipalController {
// Identificar os elementos da View:
  String frase;
  String autor;
  var resultadoFrase = '';
  var resultadoAutor = '';

  // Método de buscar os ifos do model:
  Future<void> buscar() async {
    // Instanciar um objeto do tipo Endereco:
  var end = FraseModel();
  end = await FraseModel.obterDados();
      // Montar a string de resposta:
      print(end.frase);
     resultadoFrase = 'frase: ${end.frase}';
     resultadoAutor = 'autor: ${end.autor}';
  }
}
