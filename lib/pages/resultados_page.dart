// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:liga_corner_app/dtos/providers/partidos_provider.dart';
import 'package:liga_corner_app/utils.dart';
import 'package:provider/provider.dart';

//import '../dtos/responses/requests/partidos_response_dto.dart';

class ResultadosPage extends StatelessWidget {
  //final PartidosResponseDto? partidos;
  const ResultadosPage({
    super.key, //required this.partidos
  });
  
  @override
  Widget build(BuildContext context) {
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return ChangeNotifierProvider(
        create: (context) => PartidosProvider()..fetchUsers(),
        //operador de cascada
        child: Scaffold(
            backgroundColor: const Color(0XFFE8E8E8),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<PartidosProvider>(
            builder: (context, PartidosProvider, child) => PartidosProvider
                    .isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Expanded(
                    child: ListView.builder(
                        itemCount: PartidosProvider.partidos?.length,
                        itemBuilder: (context, index) {
                          final plays = PartidosProvider.partidos?[index];

                          return Container(
                                margin: EdgeInsets.fromLTRB(
                                    18 * fem, 0 * fem, 19 * fem, 23 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    11 * fem, 17 * fem, 12 * fem, 33 * fem),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(10 * fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x26000000),
                                      offset: Offset(0 * fem, 2 * fem),
                                      blurRadius: 0 * fem,
                                    ),
                                  ],
                                ),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 23 * fem,
                                      ),
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xfff9f9f9),
                                          borderRadius:
                                              BorderRadius.circular(5 * fem),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x3f000000),
                                              offset: Offset(0 * fem, 4 * fem),
                                              blurRadius: 2 * fem,
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.fromLTRB(
                                                  12 * fem,
                                                  15 * fem,
                                                  16 * fem,
                                                  11 * fem),
                                              width: double.infinity,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        0 * fem,
                                                        6 * fem),
                                                    width: double.infinity,
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0 * fem,
                                                                  0 * fem,
                                                                  10 * fem,
                                                                  0 * fem),
                                                          width: 30 * fem,
                                                          height: 30 * fem,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xffd9d9d9),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0 * fem,
                                                                  1 * fem,
                                                                  175 * fem,
                                                                  0 * fem),
                                                          child: Text(
                                                            '${plays?.team1.tName}',
                                                            style:
                                                                SafeGoogleFont(
                                                              'Nunito',
                                                              fontSize:
                                                                  15 * ffem,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              height: 1.3625 *
                                                                  ffem /
                                                                  fem,
                                                              color: Color(
                                                                  0xff000000),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0 * fem,
                                                                  1 * fem,
                                                                  0 * fem,
                                                                  0 * fem),
                                                          child: Text(
                                                            '${plays?.score1}',
                                                            style:
                                                                SafeGoogleFont(
                                                              'Nunito',
                                                              fontSize:
                                                                  15 * ffem,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              height: 1.3625 *
                                                                  ffem /
                                                                  fem,
                                                              color: Color(
                                                                  0xff4ecf84),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: double.infinity,
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0 * fem,
                                                                  0 * fem,
                                                                  10 * fem,
                                                                  0 * fem),
                                                          width: 30 * fem,
                                                          height: 30 * fem,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xffd9d9d9),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0 * fem,
                                                                  1 * fem,
                                                                  175 * fem,
                                                                  0 * fem),
                                                          child: Text(
                                                            '${plays?.team2.tName}',
                                                            style:
                                                                SafeGoogleFont(
                                                              'Nunito',
                                                              fontSize:
                                                                  15 * ffem,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              height: 1.3625 *
                                                                  ffem /
                                                                  fem,
                                                              color: Color(
                                                                  0xff000000),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0 * fem,
                                                                  1 * fem,
                                                                  0 * fem,
                                                                  0 * fem),
                                                          child: Text(
                                                            '${plays?.score2}',
                                                            style:
                                                                SafeGoogleFont(
                                                              'Nunito',
                                                              fontSize:
                                                                  15 * ffem,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              height: 1.3625 *
                                                                  ffem /
                                                                  fem,
                                                              color: Color(
                                                                  0xff4ecf84),
                                                            ),
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
                                              height: 30 * fem,
                                              decoration: BoxDecoration(
                                                color: Color(0xff4ecf84),
                                                borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(5 * fem),
                                                  bottomLeft:
                                                      Radius.circular(5 * fem),
                                                ),
                                              ),
                                              child: Center(
                                                child: TextButton(
                                                  onPressed: () {
                                                    //ResumenResultados();
                                                  },
                                                  child: Text(
                                                    'Detalles',
                                                    style: SafeGoogleFont(
                                                      'Nunito',
                                                      fontSize: 15 * ffem,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height:
                                                          1.3625 * ffem / fem,
                                                      color: Color(0xff595959),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ]),
                              );
                        }
                        ),
                  ),
          ),
        ],
      ),
      )
    );
  }
}
