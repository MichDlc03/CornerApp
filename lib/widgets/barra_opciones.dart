// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:liga_corner_app/utils.dart';
import 'package:flutter/material.dart';

class barOp extends StatefulWidget {
  const barOp({super.key});

  @override
  State<barOp> createState() => _barOpState();
}

class _barOpState extends State<barOp> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      margin: EdgeInsets.fromLTRB(17 * fem, 0 * fem, 18 * fem, 27 * fem),
      padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 21 * fem, 0 * fem),
      width: double.infinity,
      height: 40 * fem,
      decoration: BoxDecoration(
        color: const Color(0xffd9d9d9),
        borderRadius: BorderRadius.circular(10 * fem),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 10 * fem, 0 * fem),
            width: 112 * fem,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff4ecf84),
              borderRadius: BorderRadius.circular(10 * fem),
            ),
            child: Center(
              child: Text(
                'Partidos',
                style: SafeGoogleFont(
                  'Nunito',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.3625 * ffem / fem,
                  color: Color(0xff595959),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 39 * fem, 0 * fem),
            child: Text(
              'Torneos',
              style: SafeGoogleFont(
                'Nunito',
                fontSize: 16 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.3625 * ffem / fem,
                color: Color(0xff595959),
              ),
            ),
          ),
          Text(
            'Resultados',
            style: SafeGoogleFont(
              'Nunito',
              fontSize: 16 * ffem,
              fontWeight: FontWeight.w700,
              height: 1.3625 * ffem / fem,
              color: Color(0xff595959),
            ),
          ),
        ],
      ),
    );
  }
}
