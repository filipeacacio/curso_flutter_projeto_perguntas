import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  const Resposta(this.texto, this.quandoSelecionado, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.blue),
          foregroundColor: MaterialStatePropertyAll(Colors.white),
        ),
        onPressed: quandoSelecionado,
        child: Text(texto),
      ),
    );
  }
}
