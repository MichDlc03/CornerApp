import 'package:flutter/material.dart';
import 'package:liga_corner_app/dtos/providers/partidos_provider.dart';
import 'package:liga_corner_app/pages/vista_torneos.dart';
import 'package:liga_corner_app/utils.dart';
import 'package:provider/provider.dart';

class PartidosPage extends StatelessWidget {
  const PartidosPage({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => PartidosProvider()..fetchUsers(),
        //operador de cascada
        child: Scaffold(
            backgroundColor: const Color(0XFFE8E8E8),
            body:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Consumer<PartidosProvider>(
                builder: (context, PartidosProvider, child) => PartidosProvider
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
                          itemCount: PartidosProvider.partidos?.length,
                          itemBuilder: (BuildContext context, int index) {
                            final partidos = PartidosProvider.partidos?[index];
                            return Card(
                             child: Column(
                              children: [
                                Text(
                                  ,
                                )
                              ],
                             ),
                            );
                },
                ),
              ),
            )
          ]
        )
      )
    );
  }
}
