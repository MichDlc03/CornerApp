// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:liga_corner_app/utils.dart';

class titleResultados extends StatefulWidget {
  const titleResultados({super.key});

  @override
  State<titleResultados> createState() => _titleResultadosState();
}

class _titleResultadosState extends State<titleResultados> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 136 * fem, 17 * fem),
      child: Text(
        'Resultados de Jornadas',
        style: SafeGoogleFont(
          'Nunito',
          fontSize: 19 * ffem,
          fontWeight: FontWeight.w800,
          height: 1.3625 * ffem / fem,
          color: const Color(0xff000000),
        ),
      ),
    );
  }
}
