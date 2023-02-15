// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class CardTorneos extends StatelessWidget {
  final String UrlImage;
  final String name;
  final String city;
  final String numberplayers;
  const CardTorneos({
    Key? key,
    required this.UrlImage,
    required this.name,
    required this.city,
    required this.numberplayers
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(

      margin: const EdgeInsets.all(10),
      color: const Color(0xFF4ECF84),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Color.fromARGB(255, 255, 255, 255),
        onTap: () {},
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                    child: Image.network(
                      UrlImage,
                    ),
                
                ),
              ),
            ),
          
            // Container(
            //   child: Column(
            //     children: [
            //       Text(name, textAlign: TextAlign.start,),
            //     ],
            //   ),
              
            // )
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      child:const Text(
                        'Nombre: ',
                        style:TextStyle(
                            color: Color(0xFF595959), fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 2,),
                    Container(
                      child: Text(
                        name,
                        style: const TextStyle(
                            color: Colors.black,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      child:const Text(
                        'Ciudad: ',
                        style:TextStyle(
                            color: Color(0xFF595959), fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text(
                        city,
                        style: const TextStyle(
                            color: Colors.black,),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Container(
                child: Row(
                  children: [
                    const SizedBox(height: 2,),
                    Container(
                      child:const Text(
                        'Número de equipos: ',
                        style:TextStyle(
                            color: Color(0xFF595959), fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text(
                        numberplayers,
                        style: const TextStyle(
                            color: Colors.black,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
