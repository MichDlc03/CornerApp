import 'package:flutter/material.dart';
import 'package:liga_corner_app/widgets/logo.dart';
import 'package:liga_corner_app/widgets/title_resultados.dart';
import 'package:liga_corner_app/widgets/card_resultados.dart';

class Resultados extends StatelessWidget {
  const Resultados({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // ignore: todo
        //TODO HEADER DEL LOGO
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffededed),
        ),
        child: Stack(
          children: <Widget>[
            Column(
              children: const [
                logo(),
                titleResultados(),
                cardResultados(),
                cardResultados(),
                cardResultados()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
