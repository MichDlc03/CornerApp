// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:liga_corner_app/utils.dart';

class CardTorneos extends StatelessWidget {
  final String UrlImage;
  final String name;
  final String city;
  //final String numberplayers;
  const CardTorneos({
    Key? key,
    required this.UrlImage,
    required this.name,
    required this.city,
    // required this.numberplayers}
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(5),
      color: const Color(0xFFFFFFFF),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        // splashColor: const Color.fromARGB(255, 255, 255, 255),
        onTap: () {},
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  child: Expanded(
                    child: Image.network(
                      UrlImage,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'Nombre: ',
                        style: SafeGoogleFont(
                          'Nunito',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Container(
                      child: Expanded(
                        child: Text(
                          name,
                          overflow: TextOverflow.ellipsis,
                          style: SafeGoogleFont('Nunito',
                              color: const Color(0XFf595959)),
                          // style: const TextStyle(
                          //   color: Colors.black,
                          //),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'Ciudad: ',
                        style: SafeGoogleFont(
                          'Nunito',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Container(
                      child: Expanded(
                        child: Text(
                          city,
                          overflow: TextOverflow.ellipsis,
                          style: SafeGoogleFont('Nunito',
                              color: const Color(0xff595959)),
                          // style: const TextStyle(
                          //   color: Colors.black,
                          //),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Color(0xFF4ECF84),
              child: TextButton(
                onPressed: () {},
                child: Center(
                    child: Text(
                  'Detalles',
                  style: SafeGoogleFont('Nunito',
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
            )

            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            //   child: Container(
            //     child: Row(
            //       children: [
            //         const SizedBox(
            //           height: 2,
            //         ),
            //         Container(
            //           child: Text(
            //             'N° judadores: ',
            //             style: SafeGoogleFont('Nunito',
            //                 color: const Color(0xFF000000),
            //                 fontWeight: FontWeight.bold),
            //           ),
            //         ),
            //         Container(
            //           child: Text(
            //             numberplayers,
            //             style: const TextStyle(
            //               color: Color(0XFF595959),
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            //  const SizedBox(height: 5),
            //   Container(
            //     child: Column(
            //       children: [
            //         Text(
            //           city,
            //           style: const TextStyle(
            //               color: Color(0xFF595959), fontWeight: FontWeight.bold),
            //         ),
            //       ],
            //     ),
            //   ),
            //   const SizedBox(height: 5),
            //   Container(

            //     child: Column(
            //       children: [
            //         Text(
            //           numberplayers,
            //           style: const TextStyle(
            //               color: Color(0xFF595959), fontWeight: FontWeight.bold),
            //         ),
            //       ],
            //     ),
            //   ),
          ],
        ),
      ),
    );
  }
}
