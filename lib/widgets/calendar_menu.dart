// ignore_for_file: camel_case_types, prefer_const_constructors
import 'package:liga_corner_app/utils.dart';
import 'package:flutter/material.dart';

class calendar extends StatefulWidget {
  const calendar({super.key});

  @override
  State<calendar> createState() => _calendarState();
}

class _calendarState extends State<calendar> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
     margin: EdgeInsets.fromLTRB(5 * fem, 0 * fem, 0 * fem, 18 * fem),
      padding: EdgeInsets.fromLTRB(4 * fem, 26 * fem, 5 * fem, 36 * fem),
      width: 323 * fem,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(10 * fem),
        boxShadow: [
          BoxShadow(
            color: Color(0x3f000000),
            offset: Offset(0 * fem, 4 * fem),
            blurRadius: 2 * fem,
          ),
      ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(22 * fem, 0 * fem, 0 * fem, 30 * fem),
            width: 126 * fem,
            height: 36 * fem,
            child: Stack(
              children: [
                Positioned(
                  left: 0 * fem,
                  top: 0 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 122 * fem,
                      height: 20 * fem,
                      child: Text(
                        'Partidos de Marzo',
                        style: SafeGoogleFont(
                          'Nunito',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0 * fem,
                  top: 19 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 126 * fem,
                      height: 17 * fem,
                      child: Text(
                        'Programación semanal',
                        style: SafeGoogleFont(
                          'Nunito',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(35 * fem, 6 * fem, 30 * fem, 5 * fem),
            width: double.infinity,
            height: 62 * fem,
            decoration: BoxDecoration(
              color: Color(0x66e8e8e8),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 9 * fem, 10 * fem, 9 * fem),
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 2 * fem),
                        child: Text(
                          '22',
                          style: SafeGoogleFont(
                            'Nunito',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w800,
                            height: 1.3625 * ffem / fem,
                            color: Color(0xff4ecf84),
                          ),
                        ),
                      ),
                      Text(
                        'Lun',
                        style: SafeGoogleFont(
                          'Nunito',
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 10 * fem, 0 * fem),
                  padding:
                      EdgeInsets.fromLTRB(12 * fem, 9 * fem, 12 * fem, 9 * fem),
                  width: 42 * fem,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(10 * fem),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x26000000),
                        offset: Offset(0 * fem, 4 * fem),
                        blurRadius: 2 * fem,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            1 * fem, 0 * fem, 0 * fem, 2 * fem),
                        child: Text(
                          '23',
                          style: SafeGoogleFont(
                            'Nunito',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w800,
                            height: 1.3625 * ffem / fem,
                            color: Color(0xff4ecf84),
                          ),
                        ),
                      ),
                      Text(
                        'Mar',
                        style: SafeGoogleFont(
                          'Nunito',
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 9 * fem, 23 * fem, 8 * fem),
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 3 * fem),
                        child: Text(
                          '24',
                          style: SafeGoogleFont(
                            'Nunito',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w800,
                            height: 1.3625 * ffem / fem,
                            color: Color(0xff4ecf84),
                          ),
                        ),
                      ),
                      Text(
                        'Mie',
                        style: SafeGoogleFont(
                          'Nunito',
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 9 * fem, 22 * fem, 8 * fem),
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 3 * fem),
                        child: Text(
                          '25',
                          style: SafeGoogleFont(
                            'Nunito',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w800,
                            height: 1.3625 * ffem / fem,
                            color: Color(0xff4ecf84),
                          ),
                        ),
                      ),
                      Text(
                        'Jue',
                        style: SafeGoogleFont(
                          'Nunito',
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 9 * fem, 20 * fem, 8 * fem),
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 3 * fem),
                        child: Text(
                          '26',
                          style: SafeGoogleFont(
                            'Nunito',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w800,
                            height: 1.3625 * ffem / fem,
                            color: Color(0xff4ecf84),
                          ),
                        ),
                      ),
                      Text(
                        'Vie',
                        style: SafeGoogleFont(
                          'Nunito',
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 9 * fem, 17 * fem, 8 * fem),
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 1 * fem, 3 * fem),
                        child: Text(
                          '27',
                          style: SafeGoogleFont(
                            'Nunito',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w800,
                            height: 1.3625 * ffem / fem,
                            color: Color(0xff4ecf84),
                          ),
                        ),
                      ),
                      Text(
                        'Sab',
                        style: SafeGoogleFont(
                          'Nunito',
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 9 * fem, 0 * fem, 8 * fem),
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 1 * fem, 3 * fem),
                        child: Text(
                          '28',
                          style: SafeGoogleFont(
                            'Nunito',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w800,
                            height: 1.3625 * ffem / fem,
                            color: Color(0xff4ecf84),
                          ),
                        ),
                      ),
                      Text(
                        'Dom',
                        style: SafeGoogleFont(
                          'Nunito',
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}