import 'package:flutter/material.dart';
import 'package:liga_corner_app/dtos/providers/partidos_provider.dart';
import 'package:liga_corner_app/dtos/responses/requests/partidos_response_dto.dart';
import 'package:liga_corner_app/utils.dart';
import 'package:provider/provider.dart';

class VistasPartidos extends StatelessWidget {
  final PartidosResponseDto? partidos;
  const VistasPartidos({super.key, required this.partidos});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          '${partidos?.id}',
          style: SafeGoogleFont('Nunito', color: Colors.white),
        )),
        elevation: 0,
        backgroundColor: Color(0xFF4ECF84),
      ),
      backgroundColor: const Color(0xffE8E8E8),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: partidos?.teams.length,
          itemBuilder: (BuildContext context, int index) {
            final team = partidos?.teams[index];
            final ciudad = team?.tCity;
            final logo = team?.tEmblem ??
                'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg';
          },
        ),
      ),
    );
  }
}
