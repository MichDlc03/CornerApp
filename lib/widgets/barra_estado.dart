// ignore_for_file: camel_case_types, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:liga_corner_app/utils.dart';

class barraEstado extends StatefulWidget {
  const barraEstado({super.key});

  @override
  State<barraEstado> createState() => _barraEstadoState();
}

class _barraEstadoState extends State<barraEstado> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 20 * fem, 0 * fem),
      padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 30 * fem, 0 * fem),
      width: double.infinity,
      height: 35 * fem,
      decoration: BoxDecoration(
      color: Color(0xffe8e8e8),
       borderRadius: BorderRadius.circular(5 * fem),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 28 * fem, 0 * fem),
            width: 130 * fem,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff4ecf84),
              borderRadius: BorderRadius.circular(5 * fem),
              boxShadow: [
                BoxShadow(
                  color: Color(0x26000000),
                  offset: Offset(0 * fem, 0 * fem),
                  blurRadius: 0 * fem,
                ),
              ],
            ),
            child: Center(
              child: Text(
                'En progreso',
                style: SafeGoogleFont(
                  'Nunito',
                  fontSize: 15 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.3625 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
          Text(
            'Finalizado',
            style: SafeGoogleFont(
              'Nunito',
              fontSize: 15 * ffem,
              fontWeight: FontWeight.w700,
              height: 1.3625 * ffem / fem,
              color: Color(0xff929292),
            ),
          ),
        ],
      ),
    );
  }
}
