// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:liga_corner_app/utils.dart';

class card extends StatefulWidget {
  // ignore: non_constant_identifier_names
  final String tEmblem;
  final String tName;
  final String tCity;

  const card({
    Key? key,
      // ignore: non_constant_identifier_names
      required this.tEmblem,
      required this.tName,
      required this.tCity,
    }): super(key: key);

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
  double baseWidth = 400;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;

    return Container(
      margin: EdgeInsets.fromLTRB(22 * fem, 0 * fem, 15 * fem, 18 * fem),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(5 * fem),
        boxShadow: [
          BoxShadow(
            color: const Color(0x3f000000),
            offset: Offset(0 * fem, 4 * fem),
            blurRadius: 2 * fem,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20 * fem, 26 * fem, 0 * fem, 24 * fem),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 20 * fem, 17 * fem),
                  height: 42 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 54 * fem, 0 * fem),
                        width: 50 * fem,
                        height: 42 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffd9d9d9),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 56 * fem, 0 * fem),
                        width: 59 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffc2c2c2)),
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(5 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'VS',
                            style: SafeGoogleFont(
                              'Nunito',
                              fontSize: 22 * ffem,
                              fontWeight: FontWeight.w800,
                              height: 1.3625 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 50 * fem,
                        height: 42 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffd9d9d9),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 39 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 77 * fem, 0 * fem),
                        width: 113 * fem,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 6 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 46 * fem,
                                  height: 20 * fem,
                                  child: Text(
                                    'Club :',
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
                              left: 6 * fem,
                              top: 18 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 81 * fem,
                                  height: 17 * fem,
                                  child: Text(
                                    'tCity: ',
                                    style: SafeGoogleFont(
                                      'Nunito',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w500,
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
                      SizedBox(
                        width: 113 * fem,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 5 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 45 * fem,
                                  height: 20 * fem,
                                  child: Text(
                                    'Club: ',
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
                              left: 5 * fem,
                              top: 18 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 81 * fem,
                                  height: 17 * fem,
                                  child: Text(
                                    'tCity',
                                    style: SafeGoogleFont(
                                      'Nunito',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w500,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 41 * fem,
            decoration: BoxDecoration(
              color: Color(0xff4ecf84),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(5 * fem),
                bottomLeft: Radius.circular(5 * fem),
              ),
            ),
            child: Center(
              child: Text(
                'Detalles',
                style: SafeGoogleFont(
                  'Nunito',
                  fontSize: 14 * ffem,
                  fontWeight: FontWeight.w800,
                  height: 1.3625 * ffem / fem,
                  color: Color(0xff595959),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}