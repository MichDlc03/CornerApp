import 'package:flutter/material.dart';
import 'package:liga_corner_app/dtos/providers/torneo_provider.dart';
import 'package:liga_corner_app/pages/vista_torneos.dart';
import 'package:liga_corner_app/utils.dart';
import 'package:provider/provider.dart';

class TorneosPages extends StatelessWidget {
  const TorneosPages({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TorneoProvider()..fetchUsers(),
        //operador de cascada
        child: Scaffold(
            backgroundColor: const Color(0XFFE8E8E8),
            body:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Consumer<TorneoProvider>(
                builder: (context, TorneoProvider, child) => TorneoProvider
                        .isLoading
                    ? const Center(
                        child: CircularProgressIndicator(
                          color: Color(0xFF4ECF84),
                        ),
                      )
                    : Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemCount: TorneoProvider.torneos?.length,
                          itemBuilder: (BuildContext context, int index) {
                            final torneo = TorneoProvider.torneos?[index];
                            return Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              margin: const EdgeInsets.all(10),
                              color: const Color(0xFF4ECF84),
                              clipBehavior: Clip.hardEdge,
                              child: InkWell(
                                splashColor:
                                    const Color.fromARGB(255, 148, 225, 148),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              VistasTorneo(torneo: torneo)));
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Text(
                                            '${torneo?.sName}',
                                            style: SafeGoogleFont('Nunito',
                                                color: const Color(0xFFFFFFFF),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Image.network(
                                              'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg'),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),
                            );
                          },
                          // ),.builder(
                          //     itemCount: TorneoProvider.torneos?.length,
                          //     itemBuilder: (context, index) {
                          //       final torneo = TorneoProvider.torneos?[index];
                          //       return Padding(
                          //     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          //     child: Card(
                          //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          //       color: const Color(0xFFFFFFFF),
                          //       child: ListTile(
                          //         onTap: () {
                          //           Navigator.push(
                          //               context,
                          //               MaterialPageRoute(
                          //                   builder: (context) =>
                          //                        VistasTorneo(torneo: torneo,))
                          //     );
                          //     },
                          //         title:
                          //             Padding(
                          //               padding: const EdgeInsets.symmetric(vertical: 5),
                          //               child: Card(
                          //                 color: const  Color(0xFF4ECF84),
                          //                 child: Expanded(

                          //                   child: Center(
                          //                   child: Text("${torneo?.sName}", style: SafeGoogleFont('Nunito',color: const Color(0XFFE8E8E8), fontSize:16, fontWeight: FontWeight.bold),
                          //                   )
                          //                   )
                          //                   ),
                          //               ),
                          //             ),

                          //         // subtitle: Text("${user?.email}"),
                          //         // leading: Image.network(user!.avatar),
                          //         subtitle: Center(
                          //           child: Padding(
                          //             padding: const EdgeInsets.all(5),
                          //             child: Container(

                          //               color: Colors.white,
                          //               child: Expanded(
                          //                 child: ClipRRect(
                          //                   borderRadius: BorderRadius.circular(10),
                          //                   child: Image.network('https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg'))),
                          //             ),
                          //           )),
                          //       ),
                          //     ),
                          //   );

                          // GridView.count(
                          //   padding:
                          //       const EdgeInsets.symmetric(vertical: 20),
                          //   crossAxisCount: 2,
                          //   children: [
                          //     Card_patidos(
                          //       Textcard: '${torneo?.sName}',
                          //       UrlImage:
                          //           'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg',
                          //     ),
                          //     Card_patidos(
                          //       Textcard: '${torneo?.sName}',
                          //       UrlImage:
                          //           'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg',
                          //     ),
                          // Card_patidos(
                          //   Textcard: 'Liga Sabantina',
                          //   UrlImage:
                          //       'https://cdn.pixabay.com/photo/2019/09/06/02/52/football-4455306_960_720.jpg',
                          // ),
                          // Card_patidos(
                          //   Textcard: 'Liga MX',
                          //   UrlImage:
                          //       'https://cdn.pixabay.com/photo/2019/09/06/02/52/football-4455306_960_720.jpg',
                          // ),
                          // Card_patidos(
                          //   Textcard: 'Liga MX',
                          //   UrlImage:
                          //       'https://cdn.pixabay.com/photo/2019/09/06/02/52/football-4455306_960_720.jpg',
                          // ),
                          // Card_patidos(
                          //   Textcard: 'Liga MX',
                          //   UrlImage:
                          //       'https://cdn.pixabay.com/photo/2019/09/06/02/52/football-4455306_960_720.jpg',
                          // ),
                          // Card_patidos(
                          //   Textcard: 'Liga MX',
                          //   UrlImage:
                          //       'https://cdn.pixabay.com/photo/2019/09/06/02/52/football-4455306_960_720.jpg',
                          // ),
                          // Card_patidos(
                          //   Textcard: 'Liga MX',
                          //   UrlImage:
                          //       'https://cdn.pixabay.com/photo/2019/09/06/02/52/football-4455306_960_720.jpg',
                          // ),
                          //                       ],
                          //                     );

                          //                   ),
                          //             ))
                        ),
                      ),
              )
            ])));
  }
}
