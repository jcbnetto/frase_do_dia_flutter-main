import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frase_do_dia/views/components/autor.dart';
import 'package:frase_do_dia/views/components/copyright.dart';
import 'package:frase_do_dia/views/components/espacamento_h.dart';
import 'package:frase_do_dia/views/components/frase.dart';
import '../controllers/principal_controller.dart';

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();

  get buscar async {}
}

class _PrincipalState extends State<Principal> {
  var _controller = PrincipalController();

  // IMPORTANTE!
  // As variáveis (autor e textoExemplo) abaixo deverão ser removidas e o controle dos valores dos
  // campos se dará por meio dos atributos do controlador!

   String autor = "Autor";
   String textoExemplo =
      'Clique no botão abaixo para gerar uma frase que irá aparecer aqui.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FRASE ALEATÓRIA"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Image.network(
              'https://i.imgur.com/U4CLXbU.png',
              width: 200,
              height: 200,
            ),
            // Deverá substituir o campo abaixo com uma variável de controle:
            EspacamentoH(h: 20),
            Frase(frase: _controller.resultadoFrase),
            EspacamentoH(h: 20),
            Autor(
              autor: _controller.resultadoAutor,
            ),
            EspacamentoH(h: 20),
            ElevatedButton(
                onPressed: () async {
                  await _controller.buscar();
                  setState(() {});
                },
                child: Text("Gerar Frase")),
            EspacamentoH(h: 40),
            Copyright(),
          ],
        ),
      ),
    );
  }
}
