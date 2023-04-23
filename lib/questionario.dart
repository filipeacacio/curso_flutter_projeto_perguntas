import 'package:flutter/material.dart';

import 'questao.dart';
import 'resposta.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function(int) responder;
  final bool temPerguntaSelecionada;

  const Questionario(
      {required this.perguntaSelecionada,
      required this.perguntas,
      required this.responder,
      required this.temPerguntaSelecionada,
      super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = (temPerguntaSelecionada)
        ? perguntas[perguntaSelecionada].cast()['respostas']
        : [];

    // for (String textoResp in respostas) {
    //   widgets.add(Resposta(textoResp, _responder));
    // }

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas.map((resp) {
          return Resposta(resp['texto'] as String,
              () => responder(int.parse(resp['pontuacao'].toString())));
        }).toList(),
      ],
    );
  }
}
