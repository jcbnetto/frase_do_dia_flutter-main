/* 
A API abaixo retorna uma frase aleatório sempre que uma nova
consulta GET é realizada.
Link da API: https://api.senac.estevaorada.com/api/frase
*/
import 'dart:convert';
import 'package:http/http.dart';

class FraseModel {
  final String autor;
  final String frase;
  // Atributos:
  // Construtor
  FraseModel({
    this.autor,
    this.frase,
  });

  factory FraseModel.fromJson(Map json) {
    return FraseModel(
      frase: json['frase'],
      autor: json['autor'],
    );
  }
  // Métodos para buscar informações do endereço:

  static Future<FraseModel> obterDados() async {
    var url = Uri.parse('https://api.senac.estevaorada.com/api/frase');
    // Chamada assíncrona:
    var resposta = await get(url);
    //Salvar a resposta json em uma variável;
    var json = jsonDecode(resposta.body);
    // Retornar o objeto 'preenchido':
    return FraseModel.fromJson(json);
  }
}
