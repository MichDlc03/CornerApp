// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:liga_corner_app/utils.dart';

class title extends StatefulWidget {
  const title({super.key});

  @override
  State<title> createState() => _titleState();
}

class _titleState extends State<title> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 136 * fem, 17 * fem),
      child: Text(
        'Proximos partidos',
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
