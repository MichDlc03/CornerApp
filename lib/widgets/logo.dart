// ignore_for_file: camel_case_types

import 'package:liga_corner_app/utils.dart';
import 'package:flutter/material.dart';

class logo extends StatefulWidget {
  const logo({super.key});

  @override
  State<logo> createState() => _logoState();
}

class _logoState extends State<logo> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0 * fem, 34 * fem, 0 * fem, 0 * fem),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin:
                EdgeInsets.fromLTRB(23 * fem, 0 * fem, 23 * fem, 34 * fem),
                width: double.infinity,
                height: 35 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 126 * fem, 0 * fem),
                      width: 160 * fem,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0 * fem,
                            top: 1 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 160 * fem,
                                height: 50 * fem,
                                child: Text(
                                  'C    RNER',
                                  style: SafeGoogleFont(
                                    'Nunito',
                                    fontSize: 36 * ffem,
                                    fontWeight: FontWeight.w800,
                                    height: 1.3625 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 30 * fem,
                            top: 8 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 30 * fem,
                                height: 30 * fem,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(15 * fem),
                                    color: Color(0xff4ecf84),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 22.5 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 45 * fem,
                                height: 46.04 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/vaicon-2-p61.png',
                                  fit: BoxFit.cover,
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
      ],
    );
  }
}
