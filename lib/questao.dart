import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  const Questao(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    double fontSize2 = 26;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      child: Center(
        child: Text(
          texto,
          style: TextStyle(
            fontSize: fontSize2,
          ),
        ),
      ),
    );
  }
}
