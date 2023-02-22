import 'package:flutter/material.dart';
import 'package:liga_corner_app/utils.dart';

class ResumenResultados extends StatelessWidget {
  const ResumenResultados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe8e8e8),
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text('Resumen del partido',
              style: SafeGoogleFont('Nunito', color: const Color(0xff000000), fontWeight: FontWeight.bold)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          elevation: 2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Gallos Mx  VS  Leones ',style: SafeGoogleFont('Nunito', color: Colors.black,fontWeight: FontWeight.bold, fontSize: 25),)
                  ],
                ),
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [  
                    Column(
                      children: [
                        Column(
                          children: [                           
                            Container(
                            width: 150,
                            height: 100,
                            child: Image.asset('images/team1.png'), 
                            ),
                             Center(child: Text('1', style: SafeGoogleFont('Nunito', color: Colors.black,fontWeight: FontWeight.bold, fontSize: 30),)),
                                // const SizedBox(height: 2,),
                              Text('Carlos J  33', style: SafeGoogleFont('Nunito', fontSize: 16),)
                          ],
                        ),
                      ],
                    ),
                      const SizedBox(width: 5),
                      Container(
                        child: Text(
                          'VS',
                          style: SafeGoogleFont('Nunito',
                              fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      ),
                      const SizedBox(width: 5),
                     Column(
                          children: [                          
                            Container(
                            width: 150,
                            height: 100,
                            child: Image.asset('images/team2.png'), 
                            ),
                             Center(child: Text('1', style: SafeGoogleFont('Nunito', color: Colors.black,fontWeight: FontWeight.bold, fontSize: 30),)),
                                // const SizedBox(height: 2,),
                              Text('Carlos J  33', style: SafeGoogleFont('Nunito', fontSize: 16),)
                          ],
                        ),
                        
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 350,
                  height: 350,                
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Fecha: ', style: SafeGoogleFont('Nunito', fontSize: 16, fontWeight: FontWeight.bold),),
                          Text('09/12/2012', style: SafeGoogleFont('Nunito', fontSize: 16)),

                        ],
                      ),
                      const SizedBox(height: 5),
                       Row(
                        children: [
                          Text('Hora: ', style: SafeGoogleFont('Nunito', fontSize: 16, fontWeight: FontWeight.bold),),
                          Text('03:00 PM', style: SafeGoogleFont('Nunito', fontSize: 16)),

                        ],
                      ),
                      const SizedBox(height: 5),
                     Row(
                        children: [
                          Text('Lugar: ', style: SafeGoogleFont('Nunito', fontSize: 16, fontWeight: FontWeight.bold),),
                          Text('Campo Merida', style: SafeGoogleFont('Nunito', fontSize: 16)),

                        ],
                      ),
                    ],
                    ),
                )
                // const SizedBox(height: 2),
                // Row(
                //   children: [
                //    Container(
                //     width: 150,
                //     height: 100,
                //      child: Column(
                //         children: [
                //             Center(child: Text('1', style: SafeGoogleFont('Nunito', color: Colors.black,fontWeight: FontWeight.bold, fontSize: 30),)),
                //           //  const SizedBox(height: 2,),
                //           Text('Carlos J  33', style: SafeGoogleFont('Nunito', fontSize: 16),)
                        
                //         ],
                //       ),
                //    ),
                //     const SizedBox(width: 5),
                //     Container(
                //        width: 50,
                //       height: 100,
                //     ),
                //     const SizedBox(width: 5),
                //     Container(
                //        width: 150,
                //       height: 100,
                //       child: Column(
                //         children: [
                //            Center(child: Text('2', style: SafeGoogleFont('Nunito', color: Colors.black,fontWeight: FontWeight.bold, fontSize: 30),)),
                //           //  const SizedBox(height: 2,),
                //           Text('Rogelio J  3', style: SafeGoogleFont('Nunito', fontSize: 16),)
                //         ],
                //       ),
                //     ),
                   
                //   ],

                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
