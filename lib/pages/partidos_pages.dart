import 'package:flutter/material.dart';
import '../dtos/responses/requests/partidos_response_dto.dart';
import '../widgets/card_vs.dart';

class PartidosPages extends StatelessWidget {
  final PartidosResponseDto? partidos;
  const PartidosPages({super.key, required this.partidos});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE8E8E8),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: partidos?.teams.length,
          itemBuilder: (BuildContext context, int index) {
            final team = partidos?.teams[index];
            final tCity = team?.tCity;
            final tEmblem = team?.tEmblem;
            return card(
              tEmblem: '$tEmblem',
              tName: '${team?.tName}',
              tCity: '$tCity',
              //numberplayers: '${team?.}'
            );
          },
        ),
      ),
    );
  }
}
